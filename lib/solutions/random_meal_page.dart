import 'package:flutter/material.dart';
import 'package:flutter_workshop/fetch_random_meal.dart';
import 'package:flutter_workshop/meal.dart';
import 'package:flutter_workshop/meal_card.dart';
import 'package:flutter_workshop/solutions/recipes_provider.dart';
import 'package:provider/provider.dart';

class RandomMealPage extends StatefulWidget {
  const RandomMealPage({super.key});

  @override
  State<RandomMealPage> createState() => RandomMealPageState();
}

class RandomMealPageState extends State<RandomMealPage> {
  late Meal randomMeal;

  @override
  void initState() {
    super.initState();
    setRandomMeal();
  }

  Future<void> setRandomMeal() async {
    Meal meal = await fetchRandomMeal();
    setState(() {
      randomMeal = meal;
    });
  }

  @override
  Widget build(BuildContext context) {
    final recipeProvider = Provider.of<RecipesProvider>(context);

    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              recipeProvider.addRecipe(randomMeal.name);
              setRandomMeal();
            },
            child: const Text('Random')),
        MealCard(meal: randomMeal),
        Expanded(
          child: ListView.builder(
            itemCount: recipeProvider.recipes.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(recipeProvider.recipes[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
