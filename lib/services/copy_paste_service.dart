import 'package:flutter/services.dart';

class CopyPasteService{
  static Future<void> setData(String data)async {
    await Clipboard.setData(ClipboardData(text: data));
  }
  static Future<String?> getData()async {
    ClipboardData? data = await Clipboard.getData('text/plain');
    return data?.text;
  }
}