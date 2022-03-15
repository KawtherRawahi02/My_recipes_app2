import 'package:flutter/material.dart';
import 'package:myrecipesapp/widgets/category_item.dart';
import '../models/dummy_data.dart';
//import 'package:flutter/src/rendering/sliver_grid.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Recipes App'),
        ),
        body: GridView(
          children: DUMMY_CATEGORIES
              .map(
                (catadata) =>
                    CategoryItem(catadata.id, catadata.title, catadata.color),
              )
              .toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            mainAxisSpacing: 15,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 12,
          ),
        ));
  }
}
