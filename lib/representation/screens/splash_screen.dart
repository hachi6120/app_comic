import 'package:apptruyen/helpers/local_storage.dart';
import 'package:apptruyen/representation/screens/intro_screen.dart';
import 'package:apptruyen/representation/screens/main_app.dart';
import 'package:apptruyen/values/app_assets.dart';
import 'package:apptruyen/values/app_colors.dart';
import 'package:flutter/material.dart';

import '../../helpers/image_helper.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({Key? key}) : super(key: key);

  static String routeName = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    redirectIntroScreen();
  }

  void redirectIntroScreen() async{
    final ignoreIntroScreen = await LocalStorage.getValue('ignoreIntroScreen') as bool?;
    await Future.delayed(const Duration(seconds: 2));

    ignoreIntroScreen != null && ignoreIntroScreen
    ? Navigator.of(context).pushNamed(MainApp.routeName)
    : {LocalStorage.setValue('ignoreIntroScreen',true), Navigator.of(context).pushNamed(IntroScreen.routeName)};
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Positioned.fill(
            child: ImageHelper.loadFromAsset(
              AppAsset.banner4,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
    );
  }
}
