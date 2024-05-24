
import 'package:flutter_laravel/user/business/model/Authenticate.dart';
import 'package:flutter_laravel/user/business/model/AuthenticateResponse.dart';

import '../service/userLocalService.dart';
import '../service/userNetworkService.dart';

class Authenticateusecase{
  UserNetworkService network;
  UserLocalService local;

  Authenticateusecase(this.network, this.local);

  Future<AuthenticateResponse?> run(Authenticate data) async{
     var res=await network.authenticate(data);
    if(res!=null){
      local.saveToken(res.token);
      local.saveUser(res);
    }
    return res;
  }


}