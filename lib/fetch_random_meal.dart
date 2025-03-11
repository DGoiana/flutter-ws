import 'package:http/http.dart' as http;
import '../meal.dart';

Future<Meal> fetchRandomMeal() async {
  // faz o pedido a esta api: https://www.themealdb.com/api/json/v1/1/random.php

  if (response.statusCode == 200) {
    // lê a resposta da api e retorna um novo objeto meal
  } else {
    throw Exception('Failed to load meal');
  }
}
