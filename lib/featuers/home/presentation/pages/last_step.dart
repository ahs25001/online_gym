import 'package:flutter/material.dart';
import 'package:online_gym/featuers/home/presentation/pages/regular_exercise_tab.dart';

class LStep extends StatelessWidget {
  int numOfType;

  LStep(this.numOfType);

  @override
  Widget build(BuildContext context) {
    switch (numOfType) {
      case 1:
        return RegularExercise();
      case 2:
        return const Placeholder(
          color: Colors.green,
        );
      default:
        return const Placeholder(
          color: Colors.blue,
        );
    }
  }
}
