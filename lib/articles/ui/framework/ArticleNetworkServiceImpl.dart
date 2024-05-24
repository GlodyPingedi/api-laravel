 import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_laravel/articles/business/model/categorie.dart';
import 'package:flutter_laravel/articles/business/service/articlesNetworkservice.dart';
import "package:http/http.dart" as http;

class ArticleNetworkServiceImpl implements ArticlesNetworkService{
  var baseURL=dotenv.env['BASE_URL'];


  @override
  Future<List<Categorie>> getListCategories(String token) async {
    var res= await http.get(Uri.parse("$baseURL/api/categories"),
        headers: {"Authorization": "Bearer $token"});
    var reponseList=json.decode(res.body) as List;
    print("responseMap $reponseList");
    await Future.delayed(Duration(seconds: 3));
    var responseFinal= reponseList.map((e)=> Categorie.fromJson(e) ).toList();
    return responseFinal;
  }
}

void main() async {
 await dotenv.load(fileName: ".env");
  var token="1|KE0ezAjUzFrRbvBVHvIl9VSshhiHPVtqqJKwHQhO738b167d";
  var serviceImpl=ArticleNetworkServiceImpl();
  var res= await serviceImpl.getListCategories(token);
  res.forEach((v){
    print(v.name);
  });
}