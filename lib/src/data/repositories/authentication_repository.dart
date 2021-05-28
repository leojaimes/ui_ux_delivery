import 'package:ui_ux_delivery/src/data/models/user.dart';
  
//en dart para interfaces son clases abstractas
abstract class AuthenticationRepository {
  /// Sólo se definen datos de entrada y datos de salida en funciones sin cuerpo
  Future<User?> login(String email, String password);
  Future<bool> register(User user);
  Future<bool> sendResetToken(email);
}
 

