import 'package:flutter/material.dart';
import 'package:meals_app/components/category_item/category_item.dart';

import '../data/dummy_data.dart';
import '../components/category_item/category_item.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
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
      ),
    );
  }
}
