enum Complexity {
  easy,
  medium,
  hard
}

enum Affordability {
  affordable,
  pricy,
  luxurious
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imgUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isVegan;
  final bool isGlutenFree;
  final bool isLactoseFree;

  const Meal(
    {
      required this.id,
      required this.categories,
      required this.title,
      required this.imgUrl,
      required this.ingredients,
      required this.steps,
      required this.duration,
      required this.complexity,
      required this.affordability,
      required this.isVegan,
      required this.isGlutenFree,
      required this.isLactoseFree
    }
  );
}