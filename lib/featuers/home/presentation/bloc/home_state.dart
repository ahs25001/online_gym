part of 'home_bloc.dart';

enum HomeScreenStatus { init }

@immutable
class HomeState {
  HomeScreenStatus? homeScreenStatus;

  HomeState({this.homeScreenStatus});

  HomeState copyWith({HomeScreenStatus? homeScreenStatus}) {
    return HomeState(
        homeScreenStatus: homeScreenStatus ?? this.homeScreenStatus);
  }
}

class HomeInitial extends HomeState {
  HomeInitial():super(homeScreenStatus: HomeScreenStatus.init);
}
