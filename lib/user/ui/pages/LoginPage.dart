import "package:flutter/material.dart";
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoriesPage extends ConsumerWidget{

  @override
  Widget build(BuildContext context, WidgetRef ref){
    return Scaffold(
      body: Stack(children: [
        _contenuPrincipale(context, ref),
        _chargement(context, ref)
      ],),
    );

  }

  _contenuPrincipale(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Text("Authentification"),
        SizedBox(height: 50,),
        TextField(
          decoration: InputDecoration(label: Text("Email")),
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(label: Text("Mot de passe")),
        ),
        SizedBox(height: 50,),
        ElevatedButton(onPressed: (){}, child: Text("Envoyer"))
      ],
    );
  }

  _chargement(BuildContext context, WidgetRef ref) {
    return CircularProgressIndicator();
  }

}