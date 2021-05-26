import 'package:flutter/material.dart';
import 'package:ui_ux_delivery/src/ui/pages/onboard/onboard_page.dart';
import 'package:ui_ux_delivery/src/ui/routes/pages.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Pages.INITIAL ,
      routes:  Pages.routes
    );
  }
}
