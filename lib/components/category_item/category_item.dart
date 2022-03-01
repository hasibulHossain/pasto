import 'package:flutter/material.dart';

import '../../screens/category_details/category_details.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategoryItem({Key? key, required this.id, required this.title, required this.color})
      : super(key: key);

  void selectCategoryHandler(BuildContext ctx) {
    // pass essential argument along with route navigator
    Navigator.of(ctx).pushNamed(
      CategoryDetails.route,
      arguments: {
        'id': id,
        'title': title,
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      child: InkWell(
        onTap: () => selectCategoryHandler(context),
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
