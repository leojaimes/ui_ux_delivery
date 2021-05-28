import 'package:ui_ux_delivery/src/data/models/user.dart';
import 'package:ui_ux_delivery/src/data/providers/authentication_provider.dart';
 import 'package:ui_ux_delivery/src/data/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final AuthenticationProvider _authenticationProvider;
  AuthenticationRepositoryImpl(this._authenticationProvider);

  @override
  Future<User?> login(String email, String password) {
    return _authenticationProvider.login(email, password);
  }

  @override
  Future<bool> register(User user) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<bool> sendResetToken(email) {
    // TODO: implement sendResetToken
    throw UnimplementedError();
  }

 
}