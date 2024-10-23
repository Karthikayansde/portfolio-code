import 'package:flutter/material.dart';
import 'package:karthi_kayan_portfolio/services/responsive.dart';

class FontSizes{
  static double header1(BuildContext context) => Responsive.isMobile(context)?25:Responsive.getWidth(context)<920?38:45;
  static double header2(BuildContext context) => Responsive.isMobile(context)?20:Responsive.getWidth(context)<920?32:35;
  static double header3(BuildContext context) => Responsive.isMobile(context)?18:Responsive.getWidth(context)<920?25:28;
  static double header4(BuildContext context) => Responsive.isMobile(context)?17:Responsive.getWidth(context)<920?22:25;
  static double body(BuildContext context) => Responsive.isMobile(context)?16:Responsive.getWidth(context)<920?18:20;
}
class FontWeights{
  static FontWeight bold = FontWeight.w700;
  static FontWeight semiBold = FontWeight.w600;
  static FontWeight semiBoldHeader = FontWeight.w500;
  static FontWeight regular = FontWeight.w400;
}