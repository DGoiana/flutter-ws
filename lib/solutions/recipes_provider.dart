import 'package:flutter/material.dart';

class RecipesProvider extends ChangeNotifier {
  final List<String> _recipes = [];

  List<String> get recipes => _recipes;

  void addRecipe(String recipe) {
    _recipes.add(recipe);
    notifyListeners();
  }
}
