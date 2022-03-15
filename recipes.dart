import 'package:flutter/material.dart';

class Recipes {
  final List<String> ingredients;
  final List<String> categories;
  final String id;
  final String title;
  final String imageUrl;
  final Complexity complexity;
  final Affordability affordability;
  final List<String> steps;
  final int duration;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isisVegetarian;

  const Recipes({
    @required this.ingredients,
    @required this.categories,
    @required this.imageUrl,
    @required this.id,
    @required this.title,
    @required this.complexity,
    @required this.affordability,
    @required this.duration,
    @required this.isGlutenFree,
    @required this.isisVegetarian,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.steps,
  });
}

enum Complexity { hard, medium, easy }

enum Affordability {
  affordability,
  Pricey,
  Luxurious,
}
