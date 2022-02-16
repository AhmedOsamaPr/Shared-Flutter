import 'package:flutter/material.dart';
import 'package:shared_flutter/core/misc/ui_kit/colors.dart';
import 'package:shared_flutter/core/misc/ui_kit/fonts.dart';

Widget _activeButton(
    {required VoidCallback onPressed,
    required String text,
    bool? progressVisibility,
    Color? backgroundColorBtn,
    Color? textColor}) {
  return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
                color: textColor ?? WaslaColors.gray_1,
                fontFamily: WaslaFonts.robotoMedium),
          ),
          Visibility(
              visible: progressVisibility ?? false,
              child: const Padding(padding: EdgeInsets.only(left: 15))),
          Visibility(
            visible: progressVisibility ?? false,
            child: const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
            ),
          )
        ],
      ),
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          )),
          backgroundColor: MaterialStateProperty.all(
              backgroundColorBtn ?? WaslaColors.waslaYellow)));
}

Widget activeButton({required VoidCallback onPressed, required String text, bool? progressVisibility}) {
  return _activeButton(onPressed: onPressed, text: text, progressVisibility: progressVisibility);
}

Widget inActiveButton({required VoidCallback onPressed, required String text}) {
  return _activeButton(
      onPressed: onPressed,
      text: text,
      backgroundColorBtn: WaslaColors.yellowInactive,
      textColor: WaslaColors.gray_5);
}
