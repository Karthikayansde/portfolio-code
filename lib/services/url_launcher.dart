import 'package:url_launcher/url_launcher.dart';

class UrlOpener{


  static Future<bool> launch(String phUrl) async {
    final Uri url = Uri.parse(phUrl);
    if (await canLaunchUrl(url)) {
      if (await launchUrl(url)) {
        return true;
      }
      else {
        return false;
      }
    } else {
      return false;
    }
  }
}