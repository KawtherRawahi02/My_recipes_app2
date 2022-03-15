import 'package:flutter/material.dart';
import 'package:myrecipesapp/models/dummy_data.dart';
import 'package:myrecipesapp/screens/reciprs_item.dart';

class CategoryDetails extends StatelessWidget {
  //const CategoryDetails({ Key? key }) : super(key: key);
  static const routName = '/cat_detail';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = routeArgs['id'];
    final title = routeArgs['title'];
    // instead of DUMMY_CATEGORIES, I should write DUMMY_RECIPTS
    final filterRecipe = DUMMY_RECIPTS.where((reciptes) {
      return reciptes.categories.contains(id);
    }).toList();

    return Scaffold(
        appBar: AppBar(
            title: Text(title)), // title should be the one that i clicked
        body: ListView.builder(
            itemBuilder: (context, index) {
              return ReciptsItems(
                title: filterRecipe[index].title,
                imageUrl: filterRecipe[index].imageUrl,
                duration: filterRecipe[index].duration,
                complexity: filterRecipe[index].complexity,
                affordability: filterRecipe[index].affordability,
              );
            },
            itemCount: filterRecipe.length));
  }
}
