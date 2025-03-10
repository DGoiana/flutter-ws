import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Melhor e mais fixe workshop do ano',
      home: Scaffold(
        body: Center(
          child: Container(), // mudar este container para o widget criado!
        ),
      ),
    );
  }
}

/*

final Meal example = Meal(
    name: 'Little French Girl',
    category: 'Perfection',
    region: 'Puorto',
    instructions:
        'Javardar lá para o meio enchidos, carne, queijo, fiambre, pão, ovo, a tua tia, o teu gato, uma garrafa de whisky, uma moeda e talvez um bocado de molho. Misturar tudo muito bem.',
    imageURL:
        'https://static.itdg.com.br/images/1200-675/93a29dad8c57bd319f6d39620ce1b644/shutterstock-2215268537-1-.jpg',
  );

*/
