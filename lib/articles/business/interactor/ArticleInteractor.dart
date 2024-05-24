import 'package:flutter_laravel/articles/business/interactor/GetCategorieListUseCase.dart';
import 'package:flutter_laravel/articles/business/service/articlesNetworkservice.dart';
import 'package:flutter_laravel/user/business/service/userLocalService.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "ArticleInteractor.g.dart";


class ArticleInteractor{
  GetCategorieListUseCase getCategorieListUseCase;
  ArticleInteractor._(
          this.getCategorieListUseCase
      );

  static build(ArticlesNetworkService network, UserLocalService local){
    return ArticleInteractor._(
      GetCategorieListUseCase(network, local)
    );
  }
}

@Riverpod(keepAlive:true)
ArticleInteractor articleInteractor(Ref ref){
  throw Exception("Non implementé");
}


