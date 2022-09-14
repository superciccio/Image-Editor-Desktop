import 'package:injectable/injectable.dart';
import 'package:photo_editor/services/auth_service/authentication_impl.dart';

/// This class holds the user that is currently authenticated if one is present.
/// It does also have functions to login and logout
@Injectable()
abstract class Authentication {
  /// Default implementation of Authentication class
  factory Authentication() => AuthenticationImpl();

  /// SignIn the user
  Future<void> signIn();

  /// SignOut an user
  Future<void> logout();

  /// Returns true is a user is authenticated or an authenticated session exists
  bool isLogged();
}
