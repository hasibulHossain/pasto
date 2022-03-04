import 'package:flutter/material.dart';

import '../../data/dummy_data.dart';
import '../../components/meal_item/meal_item.dart';
import '../../layout/custom_scaffold.dart';
import '../../models/meal.dart';

class CategoryDetails extends StatefulWidget {
  static const route = '/category-screen';

  const CategoryDetails({Key? key}) : super(key: key);

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  String _categoryTitle = '';
  List<Meal> _displayMeals = [];
  bool isFirstRender = false;

  @override
  void didChangeDependencies() {
    if(!isFirstRender) {
      // get value from navigator.
      final modalArgs = ModalRoute.of(context)!.settings.arguments as Map<String, String>;

      final categoryId = modalArgs['id']; // we get 'id' because of we pass down the id with navigator argument.

      _categoryTitle = modalArgs['title'] as String;
      _displayMeals = meals.where((meal) => meal.categories.contains(categoryId)).toList();

      isFirstRender = true;
    }

    super.didChangeDependencies();
  }

  void _removeMeal(String id) {
    setState(() {
      _displayMeals.removeWhere((meal) => meal.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: _categoryTitle,
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: _displayMeals[index].id,
            title: _displayMeals[index].title,
            affordability: _displayMeals[index].affordability,
            complexity: _displayMeals[index].complexity,
            imgUrl: _displayMeals[index].imgUrl,
            duration: _displayMeals[index].duration,
            removeItem: _removeMeal,
          );
        },
        itemCount: _displayMeals.length,
      ),
    );
  }
}
