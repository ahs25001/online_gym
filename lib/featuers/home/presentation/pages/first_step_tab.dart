import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_gym/core/utiles/AppStrings.dart';
import 'package:online_gym/core/utiles/app_styles.dart';
import 'package:online_gym/featuers/home/presentation/bloc/home_bloc.dart';

class FStepTab extends StatelessWidget {
  const FStepTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.dateOfBirth,
                style: AppStyles.fieldTitle,
              ),
              SizedBox(
                height: 10.h,
              ),
              InkWell(
                onTap: () => HomeBloc.get(context).add(OpenDatePackerEvent()),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 14.h, horizontal: 14.w),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(18.r)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        (state.birthDate == null)
                            ? AppStrings.enterYourDateOfBirth
                            : HomeBloc.get(context)
                                .state
                                .birthDate
                                .toString()
                                .substring(0, 10),
                        style: AppStyles.descriptionStyle,
                      ),
                      const Icon(
                        Icons.calendar_month,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                AppStrings.chooseYouGender,
                style: AppStyles.fieldTitle,
              ),
              SizedBox(
                height: 10.h,
              ),
              DropdownMenu(
                controller: HomeBloc.get(context).genderController,
                  hintText: AppStrings.selectYouGender,
                  width: MediaQuery.of(context).size.width * .85,
                  inputDecorationTheme: InputDecorationTheme(
                    contentPadding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 14.w),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.r))),
                  dropdownMenuEntries: const [
                    DropdownMenuEntry<String>(value: "male", label: "male"),
                    DropdownMenuEntry<String>(value: "female", label: "female"),
                  ]),
              SizedBox(
                height: 20.h,
              ),
              Text(
                AppStrings.whatIsYourWeight,
                style: AppStyles.fieldTitle,
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.blue,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18.r),
                            borderSide: const BorderSide(color: Colors.blue)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18.r),
                            borderSide: const BorderSide(color: Colors.blue)),
                      ),
                      controller: HomeBloc.get(context).weightController,
                    ),
                  ),
                  SizedBox(width: 20.w,),
                  Text(
                    AppStrings.kg,
                    style: AppStyles.descriptionStyle,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
