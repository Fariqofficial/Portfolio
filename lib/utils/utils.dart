// ignore_for_file: deprecated_member_use

import 'package:url_launcher/url_launcher.dart';

class Utilty {
  static Future<void> openUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  static Future<void> openMail() => openUrl("mailto:fariqn.diaz22@gmail.com");

  static Future<void> openMyLocation() =>
      openUrl("https://maps.app.goo.gl/ghLq7u6G1AUMGuEx7");
  static Future<void> openMyPhoneNo() => openUrl("tel:085156648147");
  static Future<void> openWhatsapp() => openUrl("https://wa.me/+6285156648147");
}
