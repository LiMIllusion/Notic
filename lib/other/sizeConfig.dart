import 'package:flutter/widgets.dart';

class SizeConfig{
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockScreenWidth;
  static double blockScreenHeight;

  static double safeAreaScreenWidth;
  static double safeAreaScreenHeight;
  static double safeBlockScreenWidth;
  static double safeBlockScreenHeight;

  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    blockScreenHeight = screenHeight/100;
    blockScreenWidth = screenWidth / 100;
    safeAreaScreenHeight = _mediaQueryData.padding.bottom + _mediaQueryData.padding.top;
    safeAreaScreenWidth = _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    safeBlockScreenHeight = (screenHeight - safeAreaScreenHeight) / 100; 
    safeBlockScreenWidth = (screenWidth - safeAreaScreenWidth) / 100;
  }

}