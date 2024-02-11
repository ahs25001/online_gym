import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_gym/core/utiles/app_styles.dart';
import 'package:online_gym/featuers/home/presentation/bloc/home_bloc.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

import '../../../../core/utiles/AppStrings.dart';

class SStepTab extends StatelessWidget {
  const SStepTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h,),
          Text(
            AppStrings.whatIsYourHeight,
            style: AppStyles.fieldTitle,
          ),
          SizedBox(height: 20.h,),
          Expanded(
            child: WheelChooser.integer(
              selectTextStyle: AppStyles.selectedSubTitleStyle.copyWith(color: Colors.blue),
                onValueChanged: (p0) {
                 HomeBloc.get(context).add(ChangeHeightEvent(p0));
                },
                maxValue: 250,
                minValue: 100),
          ),

        ],
      ),
    );
  }
}
