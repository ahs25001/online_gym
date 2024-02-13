part of 'home_bloc.dart';

enum HomeScreenStatus { init, datePackerActive }

@immutable
class HomeState {
  HomeScreenStatus? homeScreenStatus;
  int? currentStep = 0;
  DateTime? birthDate;
  int? height;
  int? numOfAppType;

  HomeState(
      {this.homeScreenStatus,
      this.currentStep,
      this.birthDate,
      this.numOfAppType,
      this.height});

  HomeState copyWith(
      {HomeScreenStatus? homeScreenStatus,
      int? currentStep,
      int? height,
      int? numOfAppType,
      DateTime? birthDate}) {
    return HomeState(
        homeScreenStatus: homeScreenStatus ?? this.homeScreenStatus,
        height: height ?? this.height,
        numOfAppType: numOfAppType ?? this.numOfAppType,
        birthDate: birthDate ?? this.birthDate,
        currentStep: currentStep ?? this.currentStep);
  }
}

class HomeInitial extends HomeState {
  HomeInitial():super(homeScreenStatus: HomeScreenStatus.init);
}
