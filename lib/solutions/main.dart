import 'package:flutter/material.dart';
import 'package:flutter_workshop/solutions/random_meal_page.dart';
import 'package:flutter_workshop/solutions/recipes_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => RecipesProvider()), // adiciona o novo provider aqui.
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Melhor e mais fixe workshop do ano',
      home: Scaffold(
        body: Center(
          child: RandomMealPage(), // adiciona a tua nova página aqui
        ),
      ),
    );
  }
}
