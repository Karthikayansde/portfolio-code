import 'package:flutter/material.dart';
import 'package:karthi_kayan_portfolio/commons/colors.dart';
import 'package:karthi_kayan_portfolio/services/responsive.dart';

class DividerWidget extends StatelessWidget {
  final bool isTop;
  const DividerWidget({super.key, required this.isTop});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6,
      width: double.maxFinite,
      child: Column(
        children: [
          !isTop?Container(
            height: 1,
            width: double.maxFinite,
            color: MyColors.textMenu,
          ):Container(),
          !isTop?Spacer():Container(),
          Container(
            height: 3,
            width: double.maxFinite,
            color: MyColors.textMenu,
          ),
          isTop?Spacer():Container(),
          isTop?Container(
            height: 1,
            width: double.maxFinite,
            color: MyColors.textMenu,
          ):Container(),
        ],
      ),
    );
  }
}
