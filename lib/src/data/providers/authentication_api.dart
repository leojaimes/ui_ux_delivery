import 'package:ui_ux_delivery/src/data/models/user.dart';

class AuthenticationAPI {
  Future<User?> login(String email, String password) async {
   await Future.delayed(Duration(seconds: 1));
    if (email == "test@test.com" && password == "12345") {
      return User(id: '1', email: '"test@test.com');
    }

    return null;
  }
}
