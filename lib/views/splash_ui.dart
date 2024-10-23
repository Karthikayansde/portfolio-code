import 'dart:async';

import 'package:flutter/material.dart';
import 'package:karthi_kayan_portfolio/commons/colors.dart';
import 'package:karthi_kayan_portfolio/commons/constants.dart';
import 'package:karthi_kayan_portfolio/views/home_ui.dart';

class SplashUi extends StatefulWidget {
  const SplashUi({super.key});

  @override
  State<SplashUi> createState() => _SplashUiState();
}

class _SplashUiState extends State<SplashUi> {
  String helloStr = Constants.splashHelloImageList[0];
  @override
  void initState() {
    init();
    super.initState();
  }

  Future<void> init() async {
    await Future.delayed(const Duration(milliseconds: 200));
    for(String str in Constants.splashHelloImageList){
      await Future.delayed(const Duration(milliseconds: 300));
      helloStr = str;
      setState(() {});
    }
    Timer(const Duration(milliseconds: 500), () {
      Navigator.of(context).pushReplacement(_createRoute());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: MyColors.black,
        child: Center(
          child: Image.asset(helloStr,width: 340,),
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 700),
      pageBuilder: (context, animation, secondaryAnimation) => HomeUi(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.linear;
        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

}
