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
                flex: 2,
                child: Container(
                  height: 120.h,
                  decoration: BoxDecoration(
                    color: ColorsManager.lightBlack,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              16.pw,
              Expanded(
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
       Row(
            children: [
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
