import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckSlider extends StatelessWidget {
  int currentStep;

  CheckSlider(this.currentStep);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          (currentStep == 0)
              ? CircleAvatar(
                  radius: 10.r,
                  backgroundColor: Colors.blue.withOpacity(.5),
                  child: CircleAvatar(
                    radius: 6.r,
                    backgroundColor: Colors.blue,
                  ),
                )
              : CircleAvatar(
                  radius: 10.r,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.check,
                    size: 10.sp,
                    color: Colors.white,
                  ),
                ),
          Expanded(
            child: Divider(
              color: (currentStep == 0) ? Colors.blue : Colors.green,
              height: 4.h,
              thickness: 4.h,
              indent: 4.w,
              endIndent: 4.w,
            ),
          ),
          (currentStep == 1)
              ? CircleAvatar(
                  radius: 10.r,
                  backgroundColor: Colors.blue.withOpacity(.5),
                  child: CircleAvatar(
                    radius: 6.r,
                    backgroundColor: Colors.blue,
                  ),
                )
              : (currentStep > 1)
                  ? CircleAvatar(
                      radius: 10.r,
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.check,
                        size: 10.sp,
                        color: Colors.white,
                      ),
                    )
                  : CircleAvatar(
                      radius: 6.r,
                      backgroundColor: Colors.blue,
                    ),
          Expanded(
            child: Divider(
              color: (currentStep <= 1) ? Colors.blue : Colors.green,
              height: 4.h,
              thickness: 4.h,
              indent: 4.w,
              endIndent: 4.w,
            ),
          ),
          (currentStep == 2)
              ? CircleAvatar(
                  radius: 10.r,
                  backgroundColor: Colors.blue.withOpacity(.5),
                  child: CircleAvatar(
                    radius: 6.r,
                    backgroundColor: Colors.blue,
                  ),
                )
              : (currentStep > 2)
                  ? CircleAvatar(
                      radius: 10.r,
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.check,
                        size: 10.sp,
                        color: Colors.white,
                      ),
                    )
                  : CircleAvatar(
                      radius: 6.r,
                      backgroundColor: Colors.blue,
                    ),
        ],
      ),
    );
  }
}
