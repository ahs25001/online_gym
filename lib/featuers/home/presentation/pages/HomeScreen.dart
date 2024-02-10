import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_gym/core/utiles/AppStrings.dart';
import 'package:online_gym/core/utiles/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStrings.chooseYourExercises,
                style: AppStyles.titleStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                AppStrings.initDesc,
                style: AppStyles.descriptionStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Container(

                    padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 8.w),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,),
                          shape: BoxShape.rectangle,

                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.person_2_outlined,
                            size: 28.sp,
                            weight: 28,
                          ),
                          SizedBox(height:8.h),
                          Text(AppStrings.information)
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
