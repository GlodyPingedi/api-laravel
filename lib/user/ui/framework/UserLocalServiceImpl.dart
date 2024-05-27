import 'package:flutter_laravel/user/business/model/AuthenticateResponse.dart';
import 'package:flutter_laravel/user/business/service/userLocalService.dart';
import 'package:get_storage/get_storage.dart';

class UserLocalServiceImpl implements UserLocalService{
  GetStorage stockage;

  UserLocalServiceImpl(this.stockage);

  @override
  Future<String> getToken() {
   var data= stockage.read("TOKEN")??"24|YigLecMC59VyIgi33lXTlP5G9QRmST4i30Nz0vaq8092003c";
   print("data token: $data");
   return Future.value(data);
  }

  @override
  Future<AuthenticateResponse> getUSer() {
    var data= stockage.read("USER")?? {};
    return Future.value(AuthenticateResponse.fromJson(data));
  }

  @override
  Future<bool> saveToken(String data) async {
    await  stockage.write("TOKEN", data);
    return true;
  }

  @override
  Future<bool> saveUser(AuthenticateResponse data) async{
    await stockage.write("USER", data.toJson());
    return true;
  }
  
}