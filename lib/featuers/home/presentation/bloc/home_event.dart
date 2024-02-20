part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class Login extends HomeEvent {}

class NextStepEvent extends HomeEvent {
  int? numOfAppType;

  NextStepEvent({this.numOfAppType});
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

class ChooseGenderEvent extends HomeEvent {
  String gender;

  ChooseGenderEvent(this.gender);
}

class SetWeightEvent extends HomeEvent {
  String weight;

  SetWeightEvent(this.weight);
}

class SelectGoalEvent extends HomeEvent {
  int numOfGoal;

  SelectGoalEvent(this.numOfGoal);
}

class FinishStepsEvent extends HomeEvent {}