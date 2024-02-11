import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utiles/app_styles.dart';

class IntroCustemIcons extends StatelessWidget {
  String title;
  IconData? icon;
  bool isSelected;
  AssetImage? imageIcon;

  IntroCustemIcons(
      {required this.title,
      this.icon,
      required this.isSelected,
      this.imageIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent, width: 2.5),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(6.r)),
          child: (icon != null)
              ? Icon(
                  icon,
                  size: 28.sp,
                  weight: 28,
                  color: (isSelected) ? Colors.blueAccent : Colors.black,
                )
              : ImageIcon(
                  imageIcon,
                  size: 28.sp,
                  color: (isSelected) ? Colors.blueAccent : Colors.black,
                ),
        ),
        SizedBox(height: 8.h),
        Text(
          title,
          style: (isSelected)
              ? AppStyles.selectedSubTitleStyle
              : AppStyles.subTitleStyle,
        )
      ],
    );
  }
}
