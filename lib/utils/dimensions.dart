import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  //ekran görünüm boyut
  static double pageViewContainer = screenHeight / 4.35;
  static double pageViewTextContainer = screenHeight / 7.98;
  static double pageView = screenHeight / 2.99;

  //standart yükseklik boyut sınıflandırması
  static double height10 = screenHeight / 95.85;
  static double height20 = screenHeight / 47.92;
  static double height15 = screenHeight / 63.9;
  static double height30 = screenHeight / 31.95;
  static double height45 = screenHeight / 21.3;
  static double height300 = screenHeight / 3.195;
  //standart genişlik boyut sınıflandırması
  static double width3 = screenHeight / 319.5;
  static double width5 = screenHeight / 191.7;
  static double width10 = screenHeight / 95.85;
  static double width20 = screenHeight / 47.92;
  static double width15 = screenHeight / 63.9;
  static double width30 = screenHeight / 31.95;
  static double width45 = screenHeight / 21.3;

  //yazı boyutu
  static double font16 = screenHeight / 59.875;
  static double font20 = screenHeight / 47.925;
  static double font26 = screenHeight / 36.86;

  //kutu kenarları yarıçap
  static double radius15 = screenHeight / 63.9;
  static double radius20 = screenHeight / 47.92;
  static double radius30 = screenHeight / 31.95;

  //simge boyutları
  static double iconSize16 = screenHeight / 59.90;
  static double iconSize24 = screenHeight / 39.93;

  //liste görünümü boyutu
  static double listViewImgSize = screenWidth / 5.00;
  static double listViewContSize = screenWidth / 5.00;

  //popüler yemek (popular food)
  static double popularFoodImgSize = screenHeight / 2.73;

  //alt yükseklik (bottom height)
  static double bottomHeightBar = screenHeight / 7.98;
}
