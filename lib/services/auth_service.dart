import 'package:registration_app/entities/auth_token.dart';
import 'package:registration_app/entities/user.dart';

abstract class AuthService {
  Future<AuthToken> auth(String username, String password);
  Future<User> getUser(AuthToken token);
}

class AuthServiceImpl implements AuthService {
  @override
  Future<AuthToken> auth(String username, String password) async {
    await Future.delayed(const Duration(seconds: 5));

    return AuthToken(token: 'some random token from api');
  }

  @override
  Future<User> getUser(AuthToken token) async {
    await Future.delayed(const Duration(seconds: 5));

    return User(
        id: 7,
        email: 'andre@smaniotto.dev.br',
        username: 'ais',
        name: 'andré',
        lastName: 'smaniotto',
        nickname: '');
  }
}
