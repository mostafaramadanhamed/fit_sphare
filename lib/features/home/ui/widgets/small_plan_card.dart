
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_styles.dart';

class SmallPlanCard extends StatelessWidget {
  const SmallPlanCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
