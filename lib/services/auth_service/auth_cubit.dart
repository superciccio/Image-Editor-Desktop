import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:photo_editor/services/auth_service/authentication.dart';

part 'auth_state.dart';

///Manages the login state of the user.
class AuthCubit extends HydratedCubit<AuthState> {
  AuthCubit() : super(AuthState());
  final Authentication authService = Authentication();

  /// SignIn the user
  signIn() async {
    authService.signIn();
    emit(AuthState(isLogged: true));
  }

  /// logout event, update UI
  logout() async {
    authService.logout();
    emit(AuthState(isLogged: false));
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    return AuthState(isLogged: json['isLogged']);
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) => {'isLogged': state.isLogged};
}
