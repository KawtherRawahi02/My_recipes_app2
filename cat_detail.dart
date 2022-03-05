import 'dart:js';

import 'package:flutter/material.dart';
import 'package:myrecipesapp/models/dummy_data.dart';
import 'category_item.dart';

class CategoryDetails extends StatelessWidget {
  //const CategoryDetails({ Key? key }) : super(key: key);

  var id,
      title,
      color = DUMMY_CATEGORIES.map((e) => CategoryItem(e.id, e.title, e.color));

  //id, title, color = CategoryItem(id, title, color)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: title), // title should be the one that i clicked
      body: Container(
        child: Text(
          'New page',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
