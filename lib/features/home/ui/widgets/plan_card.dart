import 'package:fit_sphere/core/helper/spacing_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_styles.dart';

class PlanCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imagePath;
  final bool isSmallest;
  const PlanCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.imagePath,
    required this.isSmallest,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      alignment: AlignmentDirectional.centerStart,
      height: 116.h,
      decoration: BoxDecoration(
        border: isSmallest
            ? Border.all(
                color: ColorsManager.lightBlack,
                width: 1,
                strokeAlign: BorderSide.strokeAlignOutside,
              )
            : Border.all(style: BorderStyle.none, width: 0),
        color: isSmallest ? Colors.white : ColorsManager.lightPurple,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
                color: isSmallest ? ColorsManager.lightPurple : Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                  imagePath,
                ))),
          ),
          6.ph,
          Text(
            title,
            style: TextStyles.font18LightBlackBold,
          ),
          Text(
            subTitle,
            style: TextStyles.font14LightBlackReguler,
          ),
        ],
      ),
    );
  }
}
