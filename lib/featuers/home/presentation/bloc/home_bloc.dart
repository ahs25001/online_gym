import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  static HomeBloc get(context) => BlocProvider.of(context);
  TextEditingController weightController = TextEditingController();
  TextEditingController genderController = TextEditingController();

  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      if (event is NextStepEvent) {
        emit(state.copyWith(
            homeScreenStatus: HomeScreenStatus.init,
            numOfAppType: event.numOfAppType,
            currentStep: ((state.currentStep ?? 0) < 3)
                ? (state.currentStep ?? 0) + 1
                : 0));
      } else if (event is OpenDatePackerEvent) {
        emit(state.copyWith(
            homeScreenStatus: HomeScreenStatus.datePackerActive));
      } else if (event is SetBirthDateEvent) {
        emit(state.copyWith(
            homeScreenStatus: HomeScreenStatus.init,
            birthDate: event.birthDate));
      } else if (event is ChangeHeightEvent) {
        emit(state.copyWith(height: event.height));
      }
    });
  }
}
