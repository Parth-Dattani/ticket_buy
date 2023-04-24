import 'package:flutter/material.dart';

import 'constant.dart';

mixin AppTextStyle {

  static const urbanistRegular = 'Urbanist Regular';
  static const urbanistMedium = 'Urbanist Medium';
  static const urbanistBold = 'Urbanist Bold';

  static const textFontSize7 = 7.0;
  static const textFontSize8 = 8.0;
  static const textFontSize10 = 10.0;
  static const textFontSize11 = 11.0;
  static const textFontSize12 = 12.0;
  static const textFontSize13 = 13.0;
  static const textFontSize14 = 14.0;
  static const textFontSize15 = 15.0;
  static const textFontSize16 = 16.0;
  static const textFontSize17 = 17.0;
  static const textFontSize18 = 18.0;
  static const textFontSize20 = 20.0;
  static const textFontSize22 = 22.0;
  static const textFontSize24 = 24.0;
  static const textFontSize28 = 28.0;
  static const textFontSize36 = 36.0;
  static const textFontSize32 = 32.0;
  static const textFontSize48 = 48.0;
  static const textFontSize72 = 72.0;
  static const textFontSize96 = 96.0;

  static const letterSpacing = 3.6;
  static const letterSpacing3 = -0.3;
}

class CustomTextStyle {

  static TextStyle eventStyle = const TextStyle(
    color: ColorsConfig.colorDarkPurple,
    fontFamily: AppTextStyle.urbanistMedium,
    fontSize: AppTextStyle.textFontSize18,
    fontWeight: FontWeight.w500,
    letterSpacing: AppTextStyle.letterSpacing,

  );

  static TextStyle viewStyle = const TextStyle(
      color: ColorsConfig.colorDarkBlue,
      fontFamily: AppTextStyle.urbanistMedium,
      fontSize: AppTextStyle.textFontSize18,
      fontWeight: FontWeight.w400,
  );

  static TextStyle eventTitleStyle = const TextStyle(
      color: ColorsConfig.colorBlack,
      fontFamily: AppTextStyle.urbanistMedium,
      fontSize: AppTextStyle.textFontSize18,
      fontWeight: FontWeight.w600,

  );

  static TextStyle eventTimeStyle = const TextStyle(
    color: ColorsConfig.colorBlack,
    fontFamily: AppTextStyle.urbanistRegular,
    fontSize: AppTextStyle.textFontSize14,
    fontWeight: FontWeight.w500,
  );

  static TextStyle eventToStyle = const TextStyle(
    color: ColorsConfig.colorBlue,
    fontFamily: AppTextStyle.urbanistBold,
    fontSize: AppTextStyle.textFontSize16,
    fontWeight: FontWeight.w700,
  );

  static TextStyle onBoardTitleStyle = const TextStyle(
    fontFamily: AppTextStyle.urbanistRegular,
    fontSize: AppTextStyle.textFontSize24,
    fontWeight: FontWeight.w500,
  );

  static TextStyle forwardStyle = const TextStyle(
    color: ColorsConfig.colorBlack,
    fontFamily: AppTextStyle.urbanistRegular,
    fontSize: AppTextStyle.textFontSize24,
    fontWeight: FontWeight.w500,
  );

  static TextStyle buttonTextStyle = const TextStyle(
    color: ColorsConfig.colorWhite,
    fontFamily: AppTextStyle.urbanistRegular,
    fontSize: AppTextStyle.textFontSize18,
    fontWeight: FontWeight.w500,
  );
}
