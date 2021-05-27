import 'package:flutter/foundation.dart' show ChangeNotifier;
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'
    show ChangeNotifierProvider;
import 'package:ui_ux_delivery/src/data/models/user.dart';
import 'package:ui_ux_delivery/src/data/providers/authentication_api.dart';

class LoginController extends ChangeNotifier {
  String _email = '';
  String _password = '';
  AuthenticationAPI _api = AuthenticationAPI();

  String get email => this._email;
  String get password => this._password;

  void emailChanged(String value) {
    _email = value;
    print('_email '+ _email);
  }

  void passwordChanged(String value) {
    _password = value;
    print('_password '+ _password);
  }

  void submit() async {
    User? user = await _api.login(_email, _password);
    if (user != null) {
      print('LOGIN');
    } else {
      print('TRY AGAIN');
    }
  }
}

final loginProvider = ChangeNotifierProvider<LoginController>(
    (ref) => LoginController());
