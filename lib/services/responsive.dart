import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;

  static double getWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }
  static double getHeight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }
  const Responsive({
    super.key,
    this.mobile,
    this.tablet,
    this.desktop,
  });

  static double getResponsiveSize(BuildContext context,{required double mobile, required double tablet, required double desktop}){
    if(Responsive.isMobile(context)){
      return mobile;
    }if(Responsive.isTablet(context)){
      return tablet;
    }else{
      return desktop;
    }
  }
  static bool isVertical(BuildContext context){
    return MediaQuery.of(context).size.height > MediaQuery.of(context).size.width;
  }
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 500 || MediaQuery.of(context).size.height <= 500;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width <= 1024 &&
          MediaQuery.of(context).size.width > 500;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1024;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1024) {
          return desktop!;
        }
        else if (constraints.maxWidth > 500) {
          return tablet!;
        }
        else {
          return mobile!;
        }
      },
    );
  }
}