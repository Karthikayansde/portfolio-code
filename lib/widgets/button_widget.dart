import 'package:flutter/material.dart';
import 'package:karthi_kayan_portfolio/commons/colors.dart';
import 'package:karthi_kayan_portfolio/commons/strings.dart';
import 'package:karthi_kayan_portfolio/services/responsive.dart';
import 'package:karthi_kayan_portfolio/widgets/text_widget.dart';

class ButtonWidget extends StatefulWidget {
  final void Function() onPressed;
  final Widget label;
  final bool? isResumeBtn;
  late final double height;
  late final double width;

  ButtonWidget({super.key, required this.onPressed, required this.label, required this.height, required this.width, this.isResumeBtn});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  double bgColorSizeH = 0;
  double bgColorSizeW = 0;

  @override
  Widget build(BuildContext context) {
    double radius = Responsive.isMobile(context)?11:15;
    return InkWell(
      focusColor: MyColors.transparent,
      hoverColor: MyColors.transparent,
      highlightColor: MyColors.transparent,
      splashColor: MyColors.transparent,
      onTap: widget.onPressed,
      onHover: (bool value) async {
        if (value) {
          for (double i = 0, j = 0; i <= widget.height; i += ((10 / 100) * widget.height), j += ((10 / 100) * widget.width)) {
            await Future.delayed(const Duration(microseconds: 1));
            setState(() {
              bgColorSizeH = i;
              bgColorSizeW = j;
            });
          }
        } else {
          for (double i = widget.height, j = widget.width; i >= 0; i -= ((10 / 100) * widget.height), j -= ((10 / 100) * widget.width)) {
            await Future.delayed(const Duration(microseconds: 1));
            setState(() {
              bgColorSizeH = i;
              bgColorSizeW = j;
            });
          }
        }
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(radius))),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(color: widget.isResumeBtn??false ?MyColors.red: MyColors.black, borderRadius: BorderRadius.all(Radius.circular(radius))),
              height: widget.height,
              width: widget.width,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: bgColorSizeW,
                height: bgColorSizeH,
                decoration: BoxDecoration(color: widget.isResumeBtn??false ?MyColors.black: MyColors.red, borderRadius: BorderRadius.all(Radius.circular(radius))),
              ),
            ),
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(radius))), height: widget.height, width: widget.width, child: Center(child: widget.label)),
          ],
        ),
      ),
    );
  }
}

class TextButtonWidget extends StatefulWidget {
  final void Function() onPressed;
  final Widget label;
  late final double height;
  late final double width;

  TextButtonWidget({super.key, required this.onPressed, required this.label, required this.height, required this.width});

  @override
  State<TextButtonWidget> createState() => _TextButtonWidgetState();
}

class _TextButtonWidgetState extends State<TextButtonWidget> {
  double bgColorSizeH = 0;
  double bgColorSizeW = 0;
  double radius = 15;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: MyColors.transparent,
      hoverColor: MyColors.transparent,
      highlightColor: MyColors.transparent,
      splashColor: MyColors.transparent,
      onTap: widget.onPressed,
      onHover: (bool value) async {
        if (value) {
          for (double i = 0, j = 0; i <= widget.height; i += ((10 / 100) * widget.height), j += ((10 / 100) * widget.width)) {
            await Future.delayed(const Duration(microseconds: 1));
            setState(() {
              bgColorSizeH = i;
              bgColorSizeW = j;
            });
          }
        } else {
          for (double i = widget.height, j = widget.width; i >= 0; i -= ((10 / 100) * widget.height), j -= ((10 / 100) * widget.width)) {
            await Future.delayed(const Duration(microseconds: 1));
            setState(() {
              bgColorSizeH = i;
              bgColorSizeW = j;
            });
          }
        }
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(radius))),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Container(
            //   decoration: BoxDecoration(color: MyColors.black, borderRadius: BorderRadius.all(Radius.circular(radius))),
            //   height: widget.height,
            //   width: widget.width,
            // ),
            Positioned(
              bottom: 0,
              child: Container(
                width: bgColorSizeW,
                height: bgColorSizeH,
                decoration: BoxDecoration(color: MyColors.red, borderRadius: BorderRadius.all(Radius.circular(radius))),
              ),
            ),
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(radius))), height: widget.height, width: widget.width, child: Center(child: widget.label)),
          ],
        ),
      ),
    );
  }
}

class TextOutLinedButtonWidget extends StatefulWidget {
  final void Function() onPressed;
  final Widget label;
  late final double height;
  late final double width;

  TextOutLinedButtonWidget({super.key, required this.onPressed, required this.label, required this.height, required this.width});

  @override
  State<TextOutLinedButtonWidget> createState() => _TextOutLinedButtonWidgetState();
}

class _TextOutLinedButtonWidgetState extends State<TextOutLinedButtonWidget> {
  double bgColorSizeH = 0;
  double bgColorSizeW = 0;
  double radius = 15;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: MyColors.transparent,
      hoverColor: MyColors.transparent,
      highlightColor: MyColors.transparent,
      splashColor: MyColors.transparent,
      onTap: widget.onPressed,
      onHover: (bool value) async {
        if (value) {
          for (double i = 0, j = 0; i <= widget.height; i += ((10 / 100) * widget.height), j += ((10 / 100) * widget.width)) {
            await Future.delayed(const Duration(microseconds: 1));
            setState(() {
              bgColorSizeH = i;
              bgColorSizeW = j;
            });
          }
        } else {
          for (double i = widget.height, j = widget.width; i >= 0; i -= ((10 / 100) * widget.height), j -= ((10 / 100) * widget.width)) {
            await Future.delayed(const Duration(microseconds: 1));
            setState(() {
              bgColorSizeH = i;
              bgColorSizeW = j;
            });
          }
        }
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(radius)),border: Border.all(width: 1,color: MyColors.black)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Container(
            //   decoration: BoxDecoration(color: MyColors.black, borderRadius: BorderRadius.all(Radius.circular(radius))),
            //   height: widget.height,
            //   width: widget.width,
            // ),
            Positioned(
              bottom: 0,
              child: Container(
                width: bgColorSizeW,
                height: bgColorSizeH,
                decoration: BoxDecoration(color: MyColors.red, borderRadius: BorderRadius.all(Radius.circular(radius))),
              ),
            ),
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(radius))), height: widget.height, width: widget.width, child: Center(child: widget.label)),
          ],
        ),
      ),
    );
  }
}


class RoundButtonWidget extends StatefulWidget {
  final void Function() onPressed;
  late final double height;
  late final double width;

  RoundButtonWidget({super.key, required this.onPressed, required this.height, required this.width});

  @override
  State<RoundButtonWidget> createState() => _RoundButtonWidgetState();
}

class _RoundButtonWidgetState extends State<RoundButtonWidget> {
  double bgColorSizeH = 0;
  double bgColorSizeW = 0;

  @override
  Widget build(BuildContext context) {
    double radius = 100;
    return InkWell(
      focusColor: MyColors.transparent,
      hoverColor: MyColors.transparent,
      highlightColor: MyColors.transparent,
      splashColor: MyColors.transparent,
      onTap: widget.onPressed,
      onHover: (bool value) async {
        if (value) {
          for (double i = 0, j = 0; i <= widget.height; i += ((10 / 100) * widget.height), j += ((10 / 100) * widget.width)) {
            await Future.delayed(const Duration(microseconds: 1));
            setState(() {
              bgColorSizeH = i;
              bgColorSizeW = j;
            });
          }
        } else {
          for (double i = widget.height, j = widget.width; i >= 0; i -= ((10 / 100) * widget.height), j -= ((10 / 100) * widget.width)) {
            await Future.delayed(const Duration(microseconds: 1));
            setState(() {
              bgColorSizeH = i;
              bgColorSizeW = j;
            });
          }
        }
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(radius))),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(color: MyColors.black, borderRadius: BorderRadius.all(Radius.circular(radius))),
              height: widget.height,
              width: widget.width,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: bgColorSizeW,
                height: bgColorSizeH,
                decoration: BoxDecoration(color: MyColors.red, borderRadius: BorderRadius.all(Radius.circular(radius))),
              ),
            ),
            Container(decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(radius))), height: widget.height, width: widget.width, child: Center(child: TextWidget.semiBody(MyStrings.view, context, color: MyColors.white,))),
          ],
        ),
      ),
    );
  }
}