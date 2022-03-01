import 'package:flutter/material.dart';
import 'package:meals_app/components/category_item/category_item.dart';

import '../data/dummy_data.dart';
import '../components/category_item/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      children: categories
          .map(
            (category) => CategoryItem(
              key: ValueKey(category.id),
              id: category.id,
              title: category.title,
              color: category.color,
            ),
          )
          .toList(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 3 / 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 20,
      ),
    );
  }
}
