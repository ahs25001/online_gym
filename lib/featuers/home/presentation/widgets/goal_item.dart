import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utiles/app_styles.dart';

class GoalItem extends StatelessWidget {
  String imageUrl;
  String title;

  GoalItem({super.key, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(18.r)),
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 17.h),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 32.w,
            height: 32.h,
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            title,
            style: AppStyles.fieldTitle,
          )
        ],
      ),
    );
  }
}
