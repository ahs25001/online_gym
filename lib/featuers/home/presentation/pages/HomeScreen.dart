import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_gym/core/utiles/AppStrings.dart';
import 'package:online_gym/core/utiles/app_icons.dart';
import 'package:online_gym/core/utiles/app_styles.dart';
import 'package:online_gym/featuers/home/presentation/pages/last_step.dart';
import 'package:online_gym/featuers/home/presentation/pages/second_step_tab.dart';
import 'package:online_gym/featuers/home/presentation/pages/third_step_tab.dart';
import 'package:online_gym/featuers/home/presentation/widgets/check_slider.dart';
import 'package:online_gym/featuers/home/presentation/widgets/intro_custum_icons.dart';

import '../bloc/home_bloc.dart';
import 'first_step_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    // bool readyToNextStep =false;
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocConsumer<HomeBloc, HomeState>(
              listener: (context, state) async {
                if (state.homeScreenStatus ==
                    HomeScreenStatus.datePackerActive) {
                  DateTime? birthDate = await showDatePicker(
                    context: context,
                    initialDate: (state.birthDate == null)
                        ? DateTime.now()
                        : state.birthDate,
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                    builder: (context, child) {
                      return Theme(
                        data: Theme.of(context).copyWith(
                          colorScheme: ColorScheme.light(
                            primary: Colors.blue,
                            onPrimary: Theme.of(context).colorScheme.onError,
                          ),
                          textButtonTheme: TextButtonThemeData(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                            ),
                          ),
                        ),
                        child: child!,
                      );
                    },
                  );
                  if (birthDate != null) {
                    HomeBloc.get(context).add(SetBirthDateEvent(birthDate));
                  }
                }
              },
              builder: (context, state) {
                bool readyToNextStep = ((state.currentStep == 0 ||
                            state.currentStep == null ||
                            state.currentStep == 1) &&
                        state.birthDate != null &&
                        (state.gender ?? "").isNotEmpty &&
                        state.weight != null &&
                        state.weight != 0) ||
                    (state.currentStep == 3 && state.selectedGoal != null);
                print("***********$readyToNextStep*******************");
                print("state.currentStep ${state.currentStep}");
                print("state.birthDate ${state.birthDate}");
                print("state.gender${state.gender}");
                print("state.weight ${state.weight}");
                List<Widget> steps = [
                  const FStepTab(),
                  const SStepTab(),
                  const TStepTab(),
                  LStep(state.numOfAppType ?? 1),
                ];
                return Column(
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
                      height: 26.h,
                    ),
                    Visibility(
                      visible: (state.currentStep ?? 0) < 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IntroCustemIcons(
                              title: AppStrings.information,
                              icon: Icons.person_2_outlined,
                              isSelected: state.currentStep == 0),
                          IntroCustemIcons(
                              title: AppStrings.yourHeight,
                              icon: Icons.height,
                              isSelected: state.currentStep == 1),
                          IntroCustemIcons(
                              title: AppStrings.applicationType,
                              imageIcon: AssetImage(
                                AppIcons.applicationIcon,
                              ),
                              isSelected: state.currentStep == 2)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Visibility(
                        visible: (state.currentStep ?? 0) < 3,
                        child: CheckSlider(state.currentStep ?? 0)),
                    steps[state.currentStep ?? 0],
                    const Spacer(),
                    Visibility(
                      visible: (state.currentStep ?? 0) != 2,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0.w, vertical: 20.h),
                        child: ElevatedButton(
                          onPressed: (readyToNextStep)
                              ? () {
                            if((state.currentStep??0) < 3){
                              HomeBloc.get(context).add(NextStepEvent());
                            }
                            else{
                              HomeBloc.get(context).add(FinishStepsEvent());
                            }

                                }
                              : null,
                          style: AppStyles.primaryButtonStyle,
                          child: Text(
                            AppStrings.next,
                            style: AppStyles.fieldTitle
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
