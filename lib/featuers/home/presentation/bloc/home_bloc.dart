import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  static HomeBloc get(context) => BlocProvider.of(context);
  TextEditingController weightController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  PageController pageController=PageController();

  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      if (event is NextStepEvent) {
        pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.linear);
        emit(state.copyWith(
            homeScreenStatus: HomeScreenStatus.init,
            numOfAppType: event.numOfAppType,
            currentStep: ((state.currentStep ?? 0) < 3)
                ? (state.currentStep ?? 0) + 1
                : 0));
      } else if (event is OpenDatePackerEvent) {
        emit(state.copyWith(
            homeScreenStatus: HomeScreenStatus.datePackerActive));
      }
      else if (event is SetBirthDateEvent) {
        emit(state.copyWith(
            homeScreenStatus: HomeScreenStatus.init,
            birthDate: event.birthDate));
      } else if (event is ChangeHeightEvent) {
        emit(state.copyWith(height: event.height));
      } else if (event is SetWeightEvent) {
        emit(state.copyWith(
            weight:
                double.parse((event.weight.isNotEmpty) ? event.weight : "0")));
      } else if (event is ChooseGenderEvent) {
        emit(state.copyWith(gender: event.gender));
      } else if (event is SelectGoalEvent) {
        emit(state.copyWith(selectedGoal: event.numOfGoal));
      } else if (event is FinishStepsEvent) {
        emit(state.copyWith(homeScreenStatus: HomeScreenStatus.finisSteps));
      }
    });
  }
}
