import 'package:flutter/material.dart';
import 'package:karthi_kayan_portfolio/commons/font_sizes.dart';
import 'package:karthi_kayan_portfolio/services/responsive.dart';

class TextWidget extends Text {
  const TextWidget(
      super.data, {
        super.key,
        super.textAlign,
        super.style,
        super.overflow,
      });

  factory TextWidget.semiBody(String data, BuildContext context, {Color? color}) {
    return TextWidget(
      data,
      style: TextStyle(fontSize: FontSizes.body(context), fontWeight: FontWeights.semiBold, color: color,),
    );
  }
  factory TextWidget.body(String data, BuildContext context, {Color? color, TextAlign? textAlign}) {
    return TextWidget(
      data,
      textAlign: textAlign,
      style: TextStyle(fontSize: FontSizes.body(context), fontWeight: FontWeights.regular, color: color,),
    );
  }
  factory TextWidget.semiHeader2(String data, BuildContext context, {Color? color}) {
    return TextWidget(
      data,
      style: TextStyle(fontSize: FontSizes.header2(context), fontWeight: FontWeights.regular, color: color,),
    );
  }
  factory TextWidget.header2(String data, BuildContext context, {Color? color}) {
    return TextWidget(
      data,
      style: TextStyle(fontSize: FontSizes.header2(context), fontWeight: FontWeights.bold, color: color,),
    );
  }
  factory TextWidget.semiHeader3(String data, BuildContext context, {Color? color}) {
    return TextWidget(
      data,
      style: TextStyle(fontSize: FontSizes.header3(context), fontWeight: FontWeights.semiBold, color: color,),
    );
  }
  factory TextWidget.header3(String data, BuildContext context, {Color? color}) {
    return TextWidget(
      data,
      style: TextStyle(fontSize: FontSizes.header3(context), fontWeight: FontWeights.bold, color: color,),
    );
  }
  factory TextWidget.semiHeader4(String data, BuildContext context, {Color? color}) {
    return TextWidget(
      data,
      style: TextStyle(fontSize: FontSizes.header4(context), fontWeight: FontWeights.semiBold, color: color,),
    );
  }
  factory TextWidget.header4(String data, BuildContext context, {Color? color}) {
    return TextWidget(
      data,
      style: TextStyle(fontSize: FontSizes.header3(context), fontWeight: FontWeight.w500, color: color,),
    );
  }
  factory TextWidget.header4Project(String data, BuildContext context, {Color? color}) {
    return TextWidget(
      data,
      style: TextStyle(fontSize: !Responsive.isDesktop(context)?18:25, fontWeight: FontWeight.w600, color: color,),
    );
  }
  factory TextWidget.header4ProjectRegular(String data, BuildContext context, {Color? color}) {
    return TextWidget(
      data,
      style: TextStyle(fontSize: !Responsive.isDesktop(context)?18:25, fontWeight: FontWeights.regular, color: color,),
    );
  }
  factory TextWidget.header1(String data, BuildContext context, {Color? color}) {
    return TextWidget(
      data,
      style: TextStyle(fontSize: FontSizes.header2(context), fontWeight: FontWeights.bold, color: color,),
    );
  }
  factory TextWidget.header1Project(String data, BuildContext context, {Color? color}) {
    return TextWidget(
      data,
      style: TextStyle(fontSize: !Responsive.isDesktop(context)?20:32, fontWeight: FontWeights.regular, color: color,),
    );
  }
  factory TextWidget.semiHeader1(String data, BuildContext context, {Color? color}) {
    return TextWidget(
      data,
      style: TextStyle(fontSize: FontSizes.header1(context), fontWeight: FontWeights.bold, color: color,),
    );
  }

}