import 'package:flutter/material.dart';
import 'package:flutter_workshop/meal.dart';

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
    // chama a função que faz o request à api

    // modifica o estado para a nova meal
  }

  @override
  Widget build(BuildContext context) {
    return Container(); // monta aqui a tua página.
  }
}
