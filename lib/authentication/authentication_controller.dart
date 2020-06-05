import 'package:fluttershop/authentication/authenticatable.dart';
import 'package:fluttershop/user/user.dart';

class FireBaseAuthenticationController implements Authenticatable{
  @override
  Future<bool> login(String email, String password) {
    // TODO: implement login
    return null;
  }

  @override
  Future<User> register(String email, String password) {
    // TODO: implement register
    return null;
  }

  @override
  Future<bool> resetPassword(String email) {
    // TODO: implement resetPassword
    return null;
  }

  @override
  Future<bool> updateProfile(User user) {
    // TODO: implement updateProfile
    return null;
  }

  }



