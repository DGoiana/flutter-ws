import 'package:flutter/material.dart';
import 'package:flutter_workshop/solutions/meal.dart';

class MealCard extends StatelessWidget {
  const MealCard({super.key, required this.meal}); // construtor e parâmetros

  final Meal meal; // objeto da classe Meal criada

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10), // margem exterior da card
      padding: const EdgeInsets.all(10), // padding interior da card
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black), // border preta
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // coluna ocupar o menor espaço possível
        crossAxisAlignment:
            CrossAxisAlignment.center, // centrar os elementos horizontalmente
        children: [
          Text(
            meal.name,
            style: const TextStyle(fontSize: 32), // tamanho da letra
          ),
          Image.network(meal
              .imageURL!), // bang operator, TEMOS DE TER A CERTEZA QUE imageURL não é null!!!
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 3), // adiciona padding apenas na vertical
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // distanciar os elementos o máximo possível
              children: [
                Text(
                  'Category: ${meal.category}', // formatted string
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18), // negrito
                ),
                Text(
                  'Region: ${meal.region}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18), // negrito
                ),
              ],
            ),
          ),
          Text(
            meal.instructions,
          ),
        ],
      ),
    );
  }
}
