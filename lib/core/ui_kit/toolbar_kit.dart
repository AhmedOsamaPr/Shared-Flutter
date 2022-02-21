import 'package:flutter/material.dart';
import 'package:shared_flutter/core/styles/text_style_weight_factory.dart';

import '../ui_kit/wasla_colors.dart';



class PrimaryToolBar extends StatelessWidget {
  final String title;

  final List<Widget>? actions;

  const PrimaryToolBar({Key? key, required this.title, this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: WaslaTextStyle.medium(Size.TEXT_XL),
      ),
      actions: actions ?? const [],
    );
  }
}

class SecondaryToolBar extends StatelessWidget {
  final String title;
  final List<Widget>? actions;
  final VoidCallback onPressed;

  const SecondaryToolBar(
      {Key? key, required this.onPressed, required this.title, this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: WaslaColors.gray_1,
        ),
        onPressed: onPressed,
      ),
      title: Text(
        title,
        style: WaslaTextStyle.medium(Size.TEXT_XL),
      ),
      actions: actions,
    );
  }
}
