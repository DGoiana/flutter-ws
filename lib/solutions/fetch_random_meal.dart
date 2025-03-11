import 'dart:convert';
import 'package:http/http.dart' as http;
import 'meal.dart';

Future<Meal> fetchRandomMeal() async {
  final response = await http
      .get(Uri.parse('https://www.themealdb.com/api/json/v1/1/random.php'));

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    final mealData = data['meals'][0];
    return Meal(
      name: mealData['strMeal'],
      category: mealData['strCategory'],
      region: mealData['strArea'],
      imageURL: mealData['strMealThumb'],
    );
  } else {
    throw Exception('Failed to load meal');
  }
}
