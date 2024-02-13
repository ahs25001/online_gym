import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_gym/core/utiles/AppStrings.dart';
import 'package:online_gym/core/utiles/app_icons.dart';
import 'package:online_gym/core/utiles/app_styles.dart';
import 'package:online_gym/featuers/home/presentation/widgets/goal_item.dart';

class RegularExercise extends StatelessWidget {
  const RegularExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.whatIsYourGoal,
            style: AppStyles.fieldTitle,
          ),
          SizedBox(
            height: 20.h,
          ),
          GoalItem(
              imageUrl: AppIcons.weightScale, title: AppStrings.loseWeight),
          SizedBox(
            height: 20.h,
          ),
          GoalItem(
              imageUrl: AppIcons.keepFitIcon, title: AppStrings.keepFit),
          SizedBox(
            height: 20.h,
          ),
          GoalItem(
              imageUrl: AppIcons.getStrongerIcon, title: AppStrings.getStronger),
          SizedBox(
            height: 20.h,
          ),
          GoalItem(
              imageUrl: AppIcons.gainMuscleMassIcon, title: AppStrings.loseWeight),
        ],
      ),
    );
  }
}
