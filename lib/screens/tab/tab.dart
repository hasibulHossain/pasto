import 'package:flutter/material.dart';

import '../homepage.dart';
import '../favorites/favorites.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Meals'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.category), text: 'categories'),
              Tab(icon: Icon(Icons.star), text: 'Favorites'),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            HomePage(title: 'Categories'),
            Favorites(),
          ],
        ),
      ),
    );
  }
}
