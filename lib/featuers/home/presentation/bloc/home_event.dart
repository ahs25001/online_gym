part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class NextStepEvent extends HomeEvent {

}

class ChangeHeightEvent extends HomeEvent {
  int height;

  ChangeHeightEvent(this.height);
}

class OpenDatePackerEvent extends HomeEvent {}

class SetBirthDateEvent extends HomeEvent {
  DateTime? birthDate;

  SetBirthDateEvent(this.birthDate);
}
