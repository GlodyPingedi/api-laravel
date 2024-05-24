
import 'package:flutter_laravel/user/business/model/Authenticate.dart';
import 'package:flutter_laravel/user/business/model/AuthenticateResponse.dart';

abstract class UserNetworkService{
  Future<AuthenticateResponse?> authenticate(Authenticate data);
}