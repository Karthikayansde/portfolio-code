import 'package:flutter/material.dart';
import 'package:karthi_kayan_portfolio/commons/colors.dart';
import 'package:karthi_kayan_portfolio/commons/strings.dart';
import 'package:karthi_kayan_portfolio/services/copy_paste_service.dart';
import 'package:karthi_kayan_portfolio/services/url_launcher.dart';
import 'package:karthi_kayan_portfolio/widgets/text_widget.dart';

class FunctionalServices{
  static Future<void> launchAndCopyUrl({required BuildContext context, required String URL}) async {
    await UrlOpener.launch(URL);
    CopyPasteService.setData(URL).then((value) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: MyColors.red,
          content: TextWidget.body(MyStrings.linkCopied, context, color: MyColors.white,),
          duration: Duration(seconds: 3),
        ),
      );
    },
    );
}
}