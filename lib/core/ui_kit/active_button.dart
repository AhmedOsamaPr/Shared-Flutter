import 'package:flutter/material.dart';

import '../ui_kit/wasla_colors.dart';



class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final bool? showProgress;
  const PrimaryButton({
    Key? key,
    this.onPressed,
    required this.text,
    this.showProgress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          Visibility(
              visible: showProgress ?? false,
              child: const Padding(padding: EdgeInsets.only(left: 15))),
          Visibility(
            visible: showProgress ?? false,
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
      textColor: WaslaColors.gray_1,
      disabledTextColor: WaslaColors.gray_5,
      color: WaslaColors.waslaYellow,
      disabledColor: WaslaColors.pointsYellow,
      minWidth: 80,
      height: 36,
    );
  }
}
