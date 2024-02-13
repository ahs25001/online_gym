import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utiles/AppColors.dart';
import '../../../../core/utiles/app_styles.dart';

class ExerciseTypeItem extends StatelessWidget {
  String title;
  IconData icon;

  ExerciseTypeItem({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(18.r)),
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 8.w),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25.r,
            backgroundColor: AppColors.blue,
            child: Icon(
              icon,
              color: Colors.white,
              size: 30.sp,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            title,
            style: AppStyles.fieldTitle,
          ),
          Spacer(),
          Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}
