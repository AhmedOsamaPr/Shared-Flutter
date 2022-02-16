import 'package:flutter/material.dart';
import 'package:shared_flutter/core/misc/ui_kit/colors.dart';
import 'package:shared_flutter/core/misc/ui_kit/misc.dart';
import 'package:shared_flutter/core/misc/ui_kit/text_style_kit.dart';


PreferredSizeWidget basicToolbar(String title, bool isLeading, {VoidCallback? onPressed}) {
  Widget? leadingIcon;
  if(isLeading){
    leadingIcon = IconButton(
      icon: const Icon(Icons.arrow_back, color: Colors.black),
      onPressed: onPressed,
    );
  }
  return AppBar(
    title: Text(
      title,
      style: textH6(color: WaslaColors.gray_1),
    ),
    leading: leadingIcon,
    elevation: 0,
    backgroundColor: Colors.white,
  );
}

PreferredSizeWidget secondaryToolbar({required String title,required bool isLeading, VoidCallback? onPressed}){
  Widget? leadingIcon;
  if(isLeading){
    leadingIcon = IconButton(
      icon: const Icon(Icons.arrow_back, color: Colors.black),
      onPressed: onPressed,
    );
  }
  return AppBar(
    title: Text(
      title,
      style: textH6(color: WaslaColors.gray_1),
    ),
    leading: leadingIcon,
    elevation: 0,
    actions: [
      Padding(
          child: pointsWidget(),
        padding: const EdgeInsets.only(right: 10, top: 13),
      )
    ],
    backgroundColor: Colors.white,
  );
}