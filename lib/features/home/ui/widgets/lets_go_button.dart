


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_styles.dart';

class LetsGoButton extends StatelessWidget {
  const LetsGoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            width: 61.w,
            height: 4.h,
            child: const Divider(
              color: ColorsManager.lightGreenYellow,
              thickness: 4,
            ),
          ),
        ],
      ),
    );
  }
}
