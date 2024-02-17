import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utiles/app_styles.dart';

class GoalItem extends StatelessWidget {
  String imageUrl;
  String title;
  bool isSelected;

  GoalItem(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: (isSelected) ? Colors.green : Colors.black,
              width: (isSelected) ? 1.5 : 1),
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
