import 'package:flutter/material.dart';
import '../../layout/custom_scaffold.dart';
import '../../data/dummy_data.dart';

class MealDetails extends StatelessWidget {
  static const route = '/meal-detail';

  const MealDetails({Key? key}) : super(key: key);

  Widget getTitle(BuildContext ctx, String title) {
    return Padding(
      child: Text(
        title,
        style: Theme.of(ctx).textTheme.headline6,
      ),
      padding: const EdgeInsets.symmetric(vertical: 10),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealArgument =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final mealId = mealArgument['id'];
    final mealTitle = mealArgument['title'] as String;
    final selectedMeal = meals.firstWhere((element) => element.id == mealId);

    return CustomScaffold(
      title: mealTitle,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
            getTitle(context, 'Ingredients'),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[50],
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: ListView(
                children: selectedMeal.ingredients
                    .map(
                      (
                        ingredient,
                      ) =>
                          Container(
                        child: Text(ingredient),
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 5,
                        ),
                        margin: const EdgeInsets.only(
                          bottom: 3,
                          left: 15,
                          right: 15,
                        ),
                        color: Colors.amber[100],
                      ),
                    )
                    .toList(),
              ),
            ),
            getTitle(context, 'Instruction'),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[50],
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: ListView.builder(
                itemBuilder: (ctx, index) => ListTile(
                  leading: CircleAvatar(
                    child: Text('#${index + 1}'),
                    backgroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  title: Text(
                    selectedMeal.steps[index],
                  ),
                ),
                itemCount: selectedMeal.steps.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
