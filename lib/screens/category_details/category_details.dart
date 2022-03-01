import 'package:flutter/material.dart';

import '../../data/dummy_data.dart';
import '../../components/meal_item/meal_item.dart';
import '../../layout/custom_scaffold.dart';

class CategoryDetails extends StatelessWidget {
  static const route = '/category-screen';

  const CategoryDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // get value from navigator.
    final modalArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final categoryId = modalArgs[
        'id']; // we get 'id' because of we pass down the id with navigator argument.
    final categoryTitle = modalArgs['title'];
    final categoryMeals =
        meals.where((meal) => meal.categories.contains(categoryId)).toList();

    return CustomScaffold(
      title: categoryTitle!,
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            title: categoryMeals[index].title,
            affordability: categoryMeals[index].affordability,
            complexity: categoryMeals[index].complexity,
            imgUrl: categoryMeals[index].imgUrl,
            duration: categoryMeals[index].duration,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
