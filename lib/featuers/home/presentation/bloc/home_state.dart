part of 'home_bloc.dart';

enum HomeScreenStatus { init, datePackerActive,finisSteps }

@immutable
class HomeState {
  HomeScreenStatus? homeScreenStatus;
  int? currentStep = 0;
  DateTime? birthDate;
  int? height;
  int? numOfAppType;
  int? selectedGoal;
  String? gender;
  double? weight;

  HomeState(
      {this.homeScreenStatus,
      this.currentStep,
      this.birthDate,
      this.numOfAppType,
      this.gender,
      this.selectedGoal,
      this.weight,
      this.height});

  HomeState copyWith(
      {HomeScreenStatus? homeScreenStatus,
      int? currentStep,
      String? gender,
      double? weight,
      int? selectedGoal,
      int? height,
      int? numOfAppType,
      DateTime? birthDate}) {
    return HomeState(
        homeScreenStatus: homeScreenStatus ?? this.homeScreenStatus,
        height: height ?? this.height,
        gender: gender ?? this.gender,
        weight: weight ?? this.weight,
        selectedGoal: selectedGoal ?? this.selectedGoal,
        numOfAppType: numOfAppType ?? this.numOfAppType,
        birthDate: birthDate ?? this.birthDate,
        currentStep: currentStep ?? this.currentStep);
  }
}

class HomeInitial extends HomeState {
  HomeInitial():super(homeScreenStatus: HomeScreenStatus.init);
}
