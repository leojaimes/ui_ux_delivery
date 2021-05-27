import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ui_ux_delivery/src/ui/routes/pages.dart';
import 'package:ui_ux_delivery/src/utils/colors.dart';
import 'package:ui_ux_delivery/src/utils/styles.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: primaryColor,
          accentColor: primaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: FontStyles.textTheme,
          cupertinoOverrideTheme: CupertinoThemeData(
            primaryColor: primaryColor,
            textTheme: CupertinoTextThemeData(
              textStyle: FontStyles.normal,
            ),
          ),
        ),
        initialRoute: Pages.INITIAL,
        routes: Pages.routes);
  }
}
