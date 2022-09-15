part of 'auth_cubit.dart';

class AuthState {
  final bool isLogged;
  AuthState({this.isLogged = false});

  @override
  int get hashCode => isLogged.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthState &&
          runtimeType == other.runtimeType &&
          isLogged == other.isLogged;

  @override
  String toString() => 'AuthState{user is logged: $isLogged}';
}
