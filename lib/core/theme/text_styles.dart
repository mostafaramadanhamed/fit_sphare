import 'package:fit_sphere/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helper/font_weight_helper.dart';

class TextStyles {
  static TextStyle font12GreyReguler = TextStyle(
      fontSize: 12.sp,
      color: ColorsManager.grey,
      fontWeight: FontWeightHelper.regular);

  static TextStyle font26LightBlackBold = TextStyle(
      fontSize: 26.sp,
      color: ColorsManager.lightBlack,
      fontWeight: FontWeightHelper.bold);

  static TextStyle font20LightBlackBold = TextStyle(
      fontSize: 20.sp,
      color: ColorsManager.lightBlack,
      fontWeight: FontWeightHelper.bold);
  
  static TextStyle font18LightBlackBold = TextStyle(
      fontSize: 18.sp,
      color: ColorsManager.lightBlack,
      fontWeight: FontWeightHelper.bold);

  static TextStyle font14LightBlackReguler = TextStyle(
      fontSize: 14.sp,
      color: ColorsManager.lightBlack,
      fontWeight: FontWeightHelper.regular);
}
