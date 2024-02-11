part of 'home_bloc.dart';

enum HomeScreenStatus { init, datePackerActive }

@immutable
class HomeState {
  HomeScreenStatus? homeScreenStatus;
  int? currentStep = 0;
  DateTime? birthDate;
  int? height;

  HomeState(
      {this.homeScreenStatus,
      this.currentStep ,
      this.birthDate,
      this.height});

  HomeState copyWith(
      {HomeScreenStatus? homeScreenStatus,
      int? currentStep ,
      int? height,
      DateTime? birthDate}) {
    return HomeState(
        homeScreenStatus: homeScreenStatus ?? this.homeScreenStatus,
        height: height ?? this.height,
        birthDate: birthDate ?? this.birthDate,
        currentStep: currentStep??this.currentStep);
  }
}

class HomeInitial extends HomeState {
  HomeInitial():super(homeScreenStatus: HomeScreenStatus.init);
}
