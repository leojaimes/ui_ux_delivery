import 'package:flutter/foundation.dart' show ChangeNotifier;
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'
    show ChangeNotifierProvider;
import 'package:ui_ux_delivery/src/data/models/user.dart';
import 'package:ui_ux_delivery/src/data/providers/authentication_provider.dart';
import 'package:ui_ux_delivery/src/data/repositories/authentication_repository.dart';
import 'package:ui_ux_delivery/src/data/repositories_implementation/authentication_repository.dart';

class LoginController extends ChangeNotifier {
  String _email = '';
  String _password = '';
  final AuthenticationRepository _repository =
      AuthenticationRepositoryImpl(AuthenticationProvider());

  String get email => this._email;
  String get password => this._password;

  void emailChanged(String value) {
    _email = value;
    print('_email ' + _email);
  }

  void passwordChanged(String value) {
    _password = value;
    print('_password ' + _password);
  }

  Future<User?> submit() async {
    User? user = await _repository.login(_email, _password);
    print(user);
    return user;
  }
}

final loginProvider =
    ChangeNotifierProvider<LoginController>((ref) => LoginController());
