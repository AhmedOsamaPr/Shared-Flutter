import 'package:flutter/material.dart';
import 'package:shared_flutter/core/misc/ui_kit/colors.dart';
import 'package:shared_flutter/core/misc/ui_kit/fonts.dart';

InputDecoration basicInputDecoration({String? labelText, String? error, Widget? suffixIcon}) {
  return InputDecoration(
      enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: WaslaColors.gray_5, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: WaslaColors.waslaYellow),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: WaslaColors.gray_5),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: WaslaColors.gray_5),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      labelStyle: const TextStyle(color: WaslaColors.gray_3,
          fontSize: 16,
          fontFamily: WaslaFonts.robotoRegular),
    errorText: error,
    suffixIcon: suffixIcon
  );
}
