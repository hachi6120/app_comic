import 'package:apptruyen/values/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppStyles{
  AppStyles(this.context);

  BuildContext? context;

  static const TextStyle defaultStyle = TextStyle(
    fontSize: 14,
    color: AppColors.textColor,
    fontWeight: FontWeight.w400,
    height: 16/14
  );
}

extension ExtensionTextStyle on TextStyle{
  TextStyle get light {
    return copyWith(fontWeight: FontWeight.w300);
  }

  TextStyle get regular {
    return copyWith(fontWeight: FontWeight.w400);
  }

  TextStyle get italic {
    return copyWith(
      fontWeight: FontWeight.normal,
      fontStyle: FontStyle.italic
    );
  }

  TextStyle get medium {
    return copyWith(fontWeight: FontWeight.w500);
  }

  TextStyle get fontHeader {
    return copyWith(
      fontSize: 22,
      height: 22 /24
    );
  }

  TextStyle get fontCaptio {
    return copyWith(
      fontSize: 12,
      height: 12 / 10
    );
  }

  TextStyle get semiBold {
    return copyWith(fontWeight: FontWeight.w600);
  }

  TextStyle get bold {
    return copyWith(fontWeight: FontWeight.w700);
  }

  TextStyle get textColor {
    return copyWith(color: AppColors.textColor);
  }

  TextStyle get primaryColor {
    return copyWith(color: AppColors.priamryColor);
  }

  TextStyle get whileTextColor {
    return copyWith(color: Colors.white);
  }

  TextStyle get subTitleColor {
    return copyWith(color: AppColors.subTitleColor);
  }

  TextStyle setColor(Color color){
    return copyWith(color: color);
  }

  TextStyle setTextSize(double size) {
    return copyWith(fontSize: size);
  }
}