import 'package:fit_sphere/core/helper/spacing_extension.dart';
import 'package:fit_sphere/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/lets_go_button.dart';
import 'widgets/plan_card.dart';
import 'widgets/small_plan_card.dart';
import 'widgets/weekly_stats.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                const Expanded(
                  flex: 3,
                  child: PlanCard(
                    subTitle: '2 hours',
                    imagePath: 'assets/images/workout.png',
                    title: 'Workout',
                    isSmallest: false,
                  ),
                ),
                16.pw,
                const Expanded(
                  flex: 2,
                  child: PlanCard(
                    title: 'Meditate',
                    subTitle: '1 hour',
                    imagePath: 'assets/images/meditate.png',
                    isSmallest: true,
                  ),
                ),
              ],
            ),
            16.ph,
            Row(children: [
              const Expanded(
                child:  SmallPlanCard(),
              ),
              16.pw,
              const Expanded(
                child:  LetsGoButton(),
              ),
            ]),
            42.ph,
            Text("Weekly Stats", style: TextStyles.font20LightBlackBold),
            16.ph,
            const WeeklyStats(),
          ],
        ),
      ),
    );
  }

  
}