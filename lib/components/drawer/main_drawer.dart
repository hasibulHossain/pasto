import 'package:flutter/material.dart';
import '../../screens/filter/filter.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  void routeHandler(String route, BuildContext context) {
    Navigator.of(context).pushNamed(route);
  }

  Widget _drawerItem(String title, IconData icon, BuildContext context, String route) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
      onTap: () => routeHandler(route, context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          color: Theme.of(context).colorScheme.secondary,
          child: Text(
            'Cooking Up',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
              fontSize: 30,
            ),
          ),
        ),
        const SizedBox(height: 20),
        _drawerItem('Meals', Icons.restaurant, context, '/'),
        _drawerItem('Filter', Icons.filter_alt, context, Filter.route),
      ],
    );
  }
}
