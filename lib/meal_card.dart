import 'package:flutter/material.dart';

class MealCard extends StatelessWidget {
  const MealCard({super.key}); // receber meal como parâmetro

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child:
          Container(), // mudar este container para os widgets necessários para montar o visual!
    );
  }
}
