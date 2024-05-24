
import 'package:flutter_laravel/articles/business/interactor/ArticleInteractor.dart';
import 'package:flutter_laravel/articles/business/model/categorie.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "CategorieCtrl.g.dart";

class CategorieState{
  List<Categorie> data=[];
  bool isLoading= false;

  CategorieState({this.data= const [], this.isLoading= false});

}


@riverpod
class CategorieCtrl extends _$CategorieCtrl{

  @override
  CategorieState build(){
    //recupererListCategories();
    return CategorieState();
  }

  void recupererListCategories() async{
    print("Run...");
      state=CategorieState(isLoading: true, data: state.data);
      var interactor=ref.watch(articleInteractorProvider);
      var res= await interactor.getCategorieListUseCase.run();
      print(res);
    state=CategorieState(isLoading: false, data: res);


  }

}