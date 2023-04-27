import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppColors {
  static const Color priamryColor = Color(0xff6155cc);
  static const Color secondColor = Color(0xff8f67e8);
  static const Color yellowColor = Color(0xffe9c5e);

  static const Color dividerColor = Color(0xffE5E7EB);
  static const Color textColor = Color(0xff323B4B);
  static const Color subTitleColor = Color(0xff838383);
  static const Color backgroundScaffoldColor = Color(0xffF2F2F2);
}

class Gradients {
  static const Gradient defaultGradientBackground = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomLeft,
      colors: [AppColors.secondColor, AppColors.priamryColor]);
}
