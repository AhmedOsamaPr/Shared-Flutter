import 'package:flutter/material.dart';

enum _TextWeight { REGULAR, MEDIUM, SEMI_BOLD, BOLD }

enum Size {
  DISPLAY_2XL,
  DISPLAY_XL,
  DISPLAY_LG,
  DISPLAY_MD,
  DISPLAY_SM,
  DISPLAY_XS,
  TEXT_XL,
  TEXT_LG,
  TEXT_MD,
  TEXT_SM,
  TEXT_XS
}

class _TextStyleWeightFactory {
  static _TextStyleSizeFactory create(_TextWeight textWeight) {
    switch (textWeight) {
      case _TextWeight.REGULAR:
        return _TextStyleSizeFactory(FontWeight.w400, FontStyle.normal);
      case _TextWeight.MEDIUM:
        return _TextStyleSizeFactory(FontWeight.w500, FontStyle.normal);
      case _TextWeight.SEMI_BOLD:
        return _TextStyleSizeFactory(FontWeight.w600, FontStyle.normal);
      case _TextWeight.BOLD:
        return _TextStyleSizeFactory(FontWeight.w700, FontStyle.normal);
    }
  }
}

class _TextStyleSizeFactory {
  final FontWeight fontWeight;
  final FontStyle fontStyle;

  _TextStyleSizeFactory(this.fontWeight, this.fontStyle);

  TextStyle create(Size size) {
    final TextStyle textStyle;
    switch (size) {
      case Size.DISPLAY_2XL:
        textStyle = TextStyle(
            fontWeight: fontWeight, fontStyle: fontStyle, fontSize: 96);
        break;
      case Size.DISPLAY_XL:
        textStyle = TextStyle(
            fontWeight: fontWeight, fontStyle: fontStyle, fontSize: 60);
        break;
      case Size.DISPLAY_LG:
        textStyle = TextStyle(
            fontWeight: fontWeight, fontStyle: fontStyle, fontSize: 48);
        break;
      case Size.DISPLAY_MD:
        textStyle = TextStyle(
            fontWeight: fontWeight, fontStyle: fontStyle, fontSize: 36);
        break;
      case Size.DISPLAY_SM:
        textStyle = TextStyle(
            fontWeight: fontWeight, fontStyle: fontStyle, fontSize: 30);
        break;
      case Size.DISPLAY_XS:
        textStyle = TextStyle(
            fontWeight: fontWeight, fontStyle: fontStyle, fontSize: 24);
        break;
      case Size.TEXT_XL:
        textStyle = TextStyle(
            fontWeight: fontWeight, fontStyle: fontStyle, fontSize: 20);
        break;
      case Size.TEXT_LG:
        textStyle = TextStyle(
            fontWeight: fontWeight, fontStyle: fontStyle, fontSize: 18);
        break;
      case Size.TEXT_MD:
        textStyle = TextStyle(
            fontWeight: fontWeight, fontStyle: fontStyle, fontSize: 16);
        break;
      case Size.TEXT_SM:
        textStyle = TextStyle(
            fontWeight: fontWeight, fontStyle: fontStyle, fontSize: 14);
        break;
      case Size.TEXT_XS:
        textStyle = TextStyle(
            fontWeight: fontWeight, fontStyle: fontStyle, fontSize: 12);
        break;
    }
    return textStyle;
  }
}

class WaslaTextStyle {
  static TextStyle regular(Size size) {
    return _TextStyleWeightFactory.create(_TextWeight.REGULAR).create(size);
  }

  static TextStyle medium(Size size) {
    return _TextStyleWeightFactory.create(_TextWeight.MEDIUM).create(size);
  }

  static TextStyle semiBold(Size size) {
    return _TextStyleWeightFactory.create(_TextWeight.SEMI_BOLD).create(size);
  }

  static TextStyle bold(Size size) {
    return _TextStyleWeightFactory.create(_TextWeight.BOLD).create(size);
  }
}
