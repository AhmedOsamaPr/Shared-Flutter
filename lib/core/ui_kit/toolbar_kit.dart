import 'package:flutter/material.dart';
import 'package:shared_flutter/core/styles/text_style_weight_factory.dart';
import 'package:shared_flutter/core/ui_kit/wasla_colors.dart';

class PrimaryToolBar extends AppBar {
  final String text;

  PrimaryToolBar({Key? key, required this.text})
      : super(key: key, title: Text(text, style: WaslaTextStyle.medium(Size.TEXT_XL)));
}

class SecondaryToolBar extends AppBar {
  final String text;
  final VoidCallback onPressed;

  SecondaryToolBar(
      {Key? key, required this.onPressed, required this.text})
      : super(key: key, title: Text(text, style: WaslaTextStyle.medium(Size.TEXT_XL))
      , leading: IconButton(onPressed: onPressed, icon: const Icon(
        Icons.arrow_back, color: WaslaColors.gray_1,
      ))
  );
}
