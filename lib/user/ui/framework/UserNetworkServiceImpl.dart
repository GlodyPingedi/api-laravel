
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_laravel/user/business/model/Authenticate.dart';
import 'package:flutter_laravel/user/business/model/AuthenticateResponse.dart';
import 'package:flutter_laravel/user/business/service/userNetworkService.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class UserNetworkServiceImpl implements UserNetworkService{
  var baseURL=dotenv.env['BASE_URL'];

  @override
  Future<AuthenticateResponse> authenticate(Authenticate data) async{
    var res= await http.post(Uri.parse("$baseURL/api/login"),
    body: data.toJson());
    var reponseMap=json.decode(res.body) as Map;
    print("responseMap $reponseMap");
    var reponseFinal=AuthenticateResponse.fromJson(reponseMap);
    return reponseFinal;
  }
}

void main(){
  var impl=UserNetworkServiceImpl();
  var data=Authenticate(email: "email", password: "password");
  impl.authenticate(data);
}