import 'package:apptruyen/representation/screens/intro_screen.dart';
import 'package:apptruyen/representation/screens/main_app.dart';
import 'package:apptruyen/representation/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';

final Map<String,WidgetBuilder> routes ={
  SplashScreen.routeName: (contex) => const SplashScreen(),
  IntroScreen.routeName: (contex) => const IntroScreen(),
  MainApp.routeName: (contex) => const MainApp(),

};