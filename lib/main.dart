import 'package:apptruyen/representation/screens/splash_screen.dart';
import 'package:apptruyen/routes.dart';
import 'package:apptruyen/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'helpers/local_storage.dart';

void main() async{
  await Hive.initFlutter();
  await LocalStorage.initLocalStorage();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Truyen',
      theme: ThemeData(
        primaryColor: AppColors.priamryColor,
        scaffoldBackgroundColor: AppColors.backgroundScaffoldColor,
        backgroundColor: AppColors.backgroundScaffoldColor,
      ),
      routes: routes,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}


