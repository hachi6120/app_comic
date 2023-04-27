import 'package:apptruyen/values/app_colors.dart';
import 'package:apptruyen/values/app_style.dart';
import 'package:flutter/material.dart';

class ButtomWidget extends StatelessWidget {
  const ButtomWidget({Key? key, required this.title, this.onTap}) : super(key: key);

  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          gradient: Gradients.defaultGradientBackground
        ),
        alignment: Alignment.center,
        child: Text(title, style: AppStyles.defaultStyle.whileTextColor,),
      ),
    );
  }
}
