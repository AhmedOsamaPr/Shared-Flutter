import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'core/navigation/wasla_navigation.dart';

Future<void> main() async {

  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Registration Screen',
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    // initialRoute: WaslaNavigation.splash,
    // routes: WaslaNavigation.routes,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
   Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(AppLocalizations.of(context)!.wallet_title);
  }
}
