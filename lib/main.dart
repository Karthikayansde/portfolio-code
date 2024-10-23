import 'package:flutter/material.dart';
import 'package:karthi_kayan_portfolio/commons/colors.dart';
import 'package:karthi_kayan_portfolio/commons/constants.dart';
import 'package:karthi_kayan_portfolio/commons/strings.dart';
import 'package:karthi_kayan_portfolio/views/home_ui.dart';
import 'package:karthi_kayan_portfolio/views/splash_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: Constants.font,
        scaffoldBackgroundColor: MyColors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: MyColors.black,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      // home: const SplashUi(),
      home: HomeUi(),
    );
  }
}