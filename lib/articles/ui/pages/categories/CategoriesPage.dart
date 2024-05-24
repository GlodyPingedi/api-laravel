import "package:flutter/material.dart";
import 'package:flutter_laravel/articles/ui/pages/categories/CategorieCtrl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoriesPage extends ConsumerStatefulWidget {
  const CategoriesPage({super.key});

  @override
  ConsumerState<CategoriesPage> createState() => _CategoriesState();
}


class _CategoriesState extends ConsumerState<CategoriesPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      var ctrl= ref.read(categorieCtrlProvider.notifier);
      ctrl.recupererListCategories();
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(children: [
        _contenuPrincipale(context, ref),
        _chargement(context, ref)
      ],),
    );

  }

  _contenuPrincipale(BuildContext context, WidgetRef ref) {
    var state=ref.watch(categorieCtrlProvider);
    return Column(
      children: [
        Text("Liste Categories"),
        SizedBox(height: 50,),
       Expanded(child: ListView.builder(itemCount: state.data.length, itemBuilder: (ctx, index){
         var categorie= state.data[index];
         return Text(categorie.name);
       }))

      ],
    );
  }

  _chargement(BuildContext context, WidgetRef ref) {
    var state=ref.watch(categorieCtrlProvider);

    return Visibility(visible: state.isLoading, child: Center(child: CircularProgressIndicator()));
  }

}