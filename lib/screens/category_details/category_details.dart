import 'package:flutter/material.dart';

class CategoryDetails extends StatelessWidget {
  static const route = '/category-screen';
  
  const CategoryDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final modalArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final categoryId = modalArgs['id'];
    final categoryTitle = modalArgs['title'];

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: Center(
        child: Text('category details screen $categoryTitle'),
      ),
    );
  }
}
