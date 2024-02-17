import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_gym/core/utiles/AppStrings.dart';
import 'package:online_gym/core/utiles/app_icons.dart';
import 'package:online_gym/core/utiles/app_styles.dart';
import 'package:online_gym/featuers/home/presentation/widgets/goal_item.dart';

import '../bloc/home_bloc.dart';

class RegularExercise extends StatelessWidget {
  const RegularExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.whatIsYourGoal,
                style: AppStyles.fieldTitle,
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () => HomeBloc.get(context).add(SelectGoalEvent(1)),
                child: GoalItem(
                    imageUrl: AppIcons.weightScale,
                    title: AppStrings.loseWeight,
                    isSelected: state.selectedGoal == 1),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () => HomeBloc.get(context).add(SelectGoalEvent(2)),
                child: GoalItem(
                    imageUrl: AppIcons.keepFitIcon,
                    title: AppStrings.keepFit,
                    isSelected: state.selectedGoal == 2),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () => HomeBloc.get(context).add(SelectGoalEvent(3)),
                child: GoalItem(
                    imageUrl: AppIcons.getStrongerIcon,
                    title: AppStrings.getStronger,
                    isSelected: state.selectedGoal == 3),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () => HomeBloc.get(context).add(SelectGoalEvent(4)),
                child: GoalItem(
                    imageUrl: AppIcons.gainMuscleMassIcon,
                    title: AppStrings.loseWeight,
                    isSelected: state.selectedGoal == 4),
              ),
            ],
          );
        },
      ),
    );
  }
}
