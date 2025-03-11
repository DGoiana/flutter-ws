class Meal {
  Meal(
      {required this.name,
      required this.category,
      required this.region,
      this.imageURL});

  String name;
  String category;
  String region;
  String? imageURL;
}
