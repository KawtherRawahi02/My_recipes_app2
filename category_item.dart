import 'package:flutter/material.dart';
import 'package:myrecipesapp/widgets/cat_detail.dart';

class CategoryItem extends StatelessWidget {
  //const CategoryItem({ Key? key }) : super(key: key);
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id, this.title, this.color);

  void selecctCategory(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return CategoryDetails();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => selecctCategory(context),
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
            ),
            borderRadius: BorderRadius.circular(15),
            color: color,
          ),
        ));
  }
}
