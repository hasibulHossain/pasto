import 'package:flutter/material.dart';

import './screens/homepage.dart';
import './screens/category_details/category_details.dart';

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
          primarySwatch: Colors.amber,
        ).copyWith(
          secondary: Colors.pink,
        ),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
            ),
      ),
      // home: const HomePage(title: 'My meal'),
      initialRoute: '/', // default is /
      routes: {
        '/': (context) => const HomePage(title: 'My meal'),
        CategoryDetails.route: (context) => const CategoryDetails()
      },
    );
  }
}
