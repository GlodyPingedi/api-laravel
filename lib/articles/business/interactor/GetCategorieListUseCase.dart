
import 'package:flutter_laravel/articles/business/model/categorie.dart';
import 'package:flutter_laravel/articles/business/service/articlesNetworkservice.dart';
import 'package:flutter_laravel/user/business/service/userLocalService.dart';

class GetCategorieListUseCase{
  ArticlesNetworkService network;
  UserLocalService local;

  GetCategorieListUseCase(this.network, this.local);

  Future<List<Categorie>> run() async{
      var token= await local.getToken();
      return network.getListCategories(token);
  }


}