import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_gym/core/utiles/app_styles.dart';
import 'package:online_gym/featuers/home/presentation/bloc/home_bloc.dart';
import 'package:online_gym/featuers/home/presentation/widgets/exercise_typ_item.dart';

import '../../../../core/utiles/AppStrings.dart';

class TStepTab extends StatelessWidget {
  const TStepTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppStrings.choose1OfTheFollowingOptions,
              style: AppStyles.fieldTitle),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () =>
                HomeBloc.get(context).add(NextStepEvent(numOfAppType: 1)),
            child: ExerciseTypeItem(
                title: AppStrings.regularExercise, icon: Icons.directions_run),
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () => HomeBloc.get(context).add(NextStepEvent(numOfAppType: 2)),
            child: ExerciseTypeItem(
                title: AppStrings.postInjury,
                icon: Icons.personal_injury_outlined),
          ),
          SizedBox(
            height: 20.h,
          ),
          ExerciseTypeItem(
              title: AppStrings.mentalHealth, icon: Icons.self_improvement)
        ],
      ),
    );
  }
}
