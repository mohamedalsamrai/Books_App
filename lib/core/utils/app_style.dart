import 'package:flutter/material.dart';
import 'package:books_app/core/utils/size_config.dart';

class AppStyle {
  static TextStyle styleRegular14(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      color: const Color(0xff252525),
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemibold14(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      color: const Color(0xffDEDEDE),
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      color: const Color(0xff252525),
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      color: const Color(0xff121212),
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w600,
    );
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 350;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
