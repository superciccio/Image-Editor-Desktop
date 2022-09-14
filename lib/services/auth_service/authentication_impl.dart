import 'package:firebase_auth/firebase_auth.dart';
import 'package:photo_editor/services/auth_service/authentication.dart';

class AuthenticationImpl implements Authentication {
  @override
  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
    return Future.value();
  }

  @override
  bool isLogged() {
    return FirebaseAuth.instance.currentUser == null;
  }

  @override
  Future<void> signIn() async {
    await FirebaseAuth.instance.signInAnonymously();
    return Future.value();
  }
}
