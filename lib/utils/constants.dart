import 'package:flutter/material.dart';
import 'package:my_portfolio/models/header_item.dart';
import 'package:my_portfolio/utils/utils.dart';

const Color kBackgroundColor = Color.fromRGBO(7, 17, 26, 1);
const Color kSecondaryColor = Color(0xFF11b1d5);
const Color kdarkSecondaryColor = Color(0xFF237284);
const Color kwhiteColor = Color(0xFFFFFFFF);

const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;

double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;

sealed class AppConstants {
  static const linkedInUrl = "https://www.linkedin.com/in/fariq-naufal-diaz/";
  static const githubUrl = "https://github.com/Fariqofficial";

  static const _assets = "assets/";

  static const _images = "${_assets}images/";
  static const profilepict = "${_images}avatar.jpg";
  static const logo = "${_images}riqsudev.png";

  static const _socialImages = "${_images}social/";
  static const emailImage = "${_socialImages}gmail.png";
  static const linkedInImage = "${_socialImages}linkedin.png";
  static const githubImage = "${_socialImages}github.png";
  static const whatsappImage = "${_socialImages}whatsapp.png";

  static const _techImages = "${_images}technology/";
  static const flutterImage = "${_techImages}flutter.png";
  static const javaImage = "${_techImages}java.png";
  static const laravelImage = "${_techImages}laravel.png";
  static const firebaseImage = "${_techImages}firebase.png";
  static const astudioImage = "${_techImages}androidstudio.png";
  static const dartImage = "${_techImages}dart.png";
  static const javascriptImage = "${_techImages}javascript.png";
  static const postmanImage = "${_techImages}postman.png";
  static const vstudioImage = "${_techImages}visualstudio.png";
  static const gitImage = "${_techImages}git.png";
  static const sqlImage = "${_techImages}sql.png";
  static const figmaImage = "${_techImages}figma.png";
  static const windowsImage = "${_techImages}windows.png";

  static List<NameOnTap> socialLoginDatas = [
    NameOnTap(
        title: emailImage,
        onTap: () {
          Utilty.openMail();
        }),
    NameOnTap(
        title: linkedInImage,
        onTap: () {
          Utilty.openUrl(linkedInUrl);
        }),
    NameOnTap(
        title: githubImage,
        onTap: () {
          Utilty.openUrl(githubUrl);
        }),
  ];
}
