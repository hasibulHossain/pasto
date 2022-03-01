import 'package:flutter/material.dart';

import '../../models/meal.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String imgUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  const MealItem({
    Key? key,
    required this.title,
    required this.affordability,
    required this.complexity,
    required this.duration,
    required this.imgUrl,
  }) : super(key: key);

  void selectMeal() {}

  String get _complexityStr {
    switch (complexity) {
      case Complexity.easy:
        return 'Easy';

      case Complexity.medium:
        return 'Medium';

      case Complexity.hard:
        return 'Hard';

      default:
        return 'Unknown';
    }
  }

  String get _affordabilityStr {
    switch (affordability) {
      case Affordability.affordable:
        return 'Affordable';

      case Affordability.luxurious:
        return 'Luxurious';

      case Affordability.pricy:
        return 'Pricy';

      default:
        return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imgUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                      borderRadius: BorderRadius.all(Radius.circular(2)),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 8,
                    ),
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Icon(Icons.schedule),
                      const SizedBox(
                        width: 6,
                      ),
                      Text('$duration min')
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(Icons.work_outline_rounded),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(_complexityStr),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(Icons.attach_money_rounded),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(_affordabilityStr),
                    ],
                  ),
                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}
