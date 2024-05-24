
import 'package:flutter_laravel/user/business/model/AuthenticateResponse.dart';

abstract class UserLocalService{
  Future<bool> saveToken(String data);
  Future<String> getToken();
  Future<bool> saveUser(AuthenticateResponse data);
  Future<AuthenticateResponse> getUSer();
}