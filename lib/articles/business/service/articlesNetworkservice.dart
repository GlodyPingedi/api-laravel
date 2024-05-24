
import 'package:flutter_laravel/articles/business/model/categorie.dart';

abstract class ArticlesNetworkService{
  Future<List<Categorie>> getListCategories(String token);
}