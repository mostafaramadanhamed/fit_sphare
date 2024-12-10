import 'package:fit_sphere/core/helper/spacing_extension.dart';
import 'package:fit_sphere/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          45.ph,
          Text(
            'EVERYDAY WE\'RE MUSCLEN',
            style: TextStyles.font12GreyReguler,
          ),
          10.ph,
          Text(
            'Hello, Mostafa 👋',
            style: TextStyles.font26LightBlackBold,
          ),
          36.ph,
          Text(
            'My Plan',
            style: TextStyles.font20LightBlackBold,
          ),
          16.ph,
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  alignment: AlignmentDirectional.centerStart,
                  height: 116.h,
                  decoration: BoxDecoration(
                    color: ColorsManager.lightPurple,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                              'assets/images/workout.png',
                            ))),
                      ),
                      6.ph,
                      Text(
                        'Workout',
                        style: TextStyles.font18LightBlackBold,
                      ),
                      Text(
                        '2 hours',
                        style: TextStyles.font14LightBlackReguler,
                      ),
                    ],
                  ),
                ),
              ),
              16.pw,
              Expanded(
                flex: 2,
                child: Container(
                  alignment: AlignmentDirectional.centerStart,
                  height: 116.h,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: ColorsManager.lightBlack),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: const BoxDecoration(
                            color: ColorsManager.lightPurple,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(
                              'assets/images/meditate.png',
                            ))),
                      ),
                      4.ph,
                      Text(
                        'Meditate',
                        style: TextStyles.font18LightBlackBold,
                      ),
                      Text(
                        '1 hours',
                        style: TextStyles.font14LightBlackReguler,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          16.ph,
          Row(children: [
            Expanded(
              child: Container(
                height: 75.h,
                alignment: AlignmentDirectional.centerStart,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: ColorsManager.lightBlack),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Food",
                          style: TextStyles.font18LightBlackBold,
                        ),
                        Text(
                          "1832 kcal",
                          style: TextStyles.font14LightBlackReguler,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorsManager.lightPurple,
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/food.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            16.pw,
            Expanded(
              child: Container(
                height: 75.h,
                decoration: BoxDecoration(
                  color: ColorsManager.lightBlack,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Let's Go",
                        style: TextStyles.font18LightBlackBold.copyWith(
                          color: Colors.white,
                        )),
                    SizedBox(
                      child: Divider(
                        color: ColorsManager.lightGreenYellow,
                        thickness: 2,
                      ),
                      width: 100.w,
                    )
                  ],
                ),
              ),
            ),
          ])
        ]),
      ),
    );
  }
}
