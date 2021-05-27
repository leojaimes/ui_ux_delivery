import 'package:flutter/widgets.dart';
import 'package:ui_ux_delivery/src/ui/pages/login/login_page.dart';
import 'package:ui_ux_delivery/src/ui/pages/onboard/onboard_page.dart';
import 'package:ui_ux_delivery/src/ui/pages/register/register_page.dart';
import 'package:ui_ux_delivery/src/ui/pages/welcome/welcome.dart';
import 'package:ui_ux_delivery/src/ui/routes/routes.dart';

abstract class Pages {
  static const String INITIAL = Routes.ONBOARD;
  static final Map<String, Widget Function(BuildContext)> routes = {
    Routes.ONBOARD: (_) => OnboardPage(),
    Routes.WELCOME: (_) => WelcomePage(),
    Routes.REGISTER: (_) => RegisterPage(),
    Routes.LOGIN: (_) => LoginPage(),
  };
}
