import 'package:flutter/material.dart';

import './screens/tab/tab.dart';
import './screens/category_details/category_details.dart';
import './screens/meal_details/meal_details.dart';
import './screens/filter/filter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My meal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink
        ).copyWith(
          secondary: Colors.yellow,
        ),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline5: const TextStyle(
                color: Colors.black87,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              )
            ),
      ),
      // home: const HomePage(title: 'My meal'),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (context) => const TabsScreen(),
        CategoryDetails.route: (context) => const CategoryDetails(),
        MealDetails.route: (context) => const MealDetails(),
        Filter.route: (context) => const Filter(),
      },
      // onGenerateRoute: (settings) {
      //   //on generate route will call if none of the route match with routes. then this fallback screen will show.
      //   return MaterialPageRoute(
      //     builder: (context) => const TabsScreen(),
      //   );
      // },
    );
  }
}
