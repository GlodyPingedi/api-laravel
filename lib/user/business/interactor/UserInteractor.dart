import 'package:flutter_laravel/user/business/interactor/AuthenticateUseCase.dart';
import 'package:flutter_laravel/user/business/service/userLocalService.dart';
import 'package:flutter_laravel/user/business/service/userNetworkService.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part "UserInteractor.g.dart";

class UserInteractor{
  Authenticateusecase authenticateusecase;

  UserInteractor._(
        this.authenticateusecase
      );

  static build(UserNetworkService network, UserLocalService local ){
    return UserInteractor._(
        Authenticateusecase(network, local)
    );
  }
}

@Riverpod(keepAlive: true)
UserInteractor userInteractor(Ref ref){
  throw Exception("Non implementé");
}
