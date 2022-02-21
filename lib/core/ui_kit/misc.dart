import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_flutter/core/ui_kit/wasla_colors.dart';
import 'package:shared_flutter/core/ui_kit/fonts.dart';

import 'wasla_colors.dart';

Widget pointsWidget(){
  return  Container(
    alignment: Alignment.topCenter,
    child: Row(mainAxisSize: MainAxisSize.min, children: [
      Container(
          padding:
          const EdgeInsets.only(left: 8, top: 4, bottom: 2, right: 12),
          decoration: BoxDecoration(
              color: WaslaColors.pointsYellow,
              border: Border.all(
                color: WaslaColors.pointsYellow
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20))),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Row(mainAxisSize: MainAxisSize.min, children: [
              CircleAvatar(
                child: SvgPicture.asset(
                  "images/coin_ic.svg",
                  width: 23,
                  height: 23,
                ),
                backgroundColor: Colors.transparent,
                minRadius: 12,
              ),
              Container(
                margin: const EdgeInsets.only(left: 2),
                child: const Text("50,000", style: TextStyle(color: Color(0xFFF0BD23), fontFamily: WaslaFonts.robotoMedium),),
              )
            ])
          ])),
    ]),
  );
}