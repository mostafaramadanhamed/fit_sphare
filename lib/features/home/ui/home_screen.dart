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
                  height: 120.h,
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
                     8.ph,
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
                  height: 120.h,
                  decoration: BoxDecoration(
                    color: ColorsManager.lightBlack,
                    borderRadius: BorderRadius.circular(10.r),
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
                decoration: BoxDecoration(
                  color: ColorsManager.lightBlack,
                  borderRadius: BorderRadius.circular(10.r),
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
              ),
            ),
          ])
        ]),
      ),
    );
  }
}
