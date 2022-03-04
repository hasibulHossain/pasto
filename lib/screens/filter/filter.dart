import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  static const route = '/filter';

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool _isGlutenFree = false;
  bool _isLactoseFree = false;
  bool _isVegan = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filter'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Text(
              'Meal app filters',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SwitchListTile(
                  activeColor: Theme.of(context).colorScheme.secondary,
                  title: const Text('Gluten-free'),
                  subtitle: const Text('Only includes gluten free meals'),
                  value: _isGlutenFree,
                  onChanged: (value) => setState(() {
                    _isGlutenFree = value;
                  }),
                ),
                SwitchListTile(
                  activeColor: Theme.of(context).colorScheme.secondary,
                  title: const Text('Lactose-free'),
                  subtitle: const Text('Only includes lactose free meals'),
                  value: _isLactoseFree,
                  onChanged: (value) => setState(() {
                    _isLactoseFree = value;
                  }),
                ),
                SwitchListTile(
                  activeColor: Theme.of(context).colorScheme.secondary,
                  title: const Text('Vegan'),
                  subtitle: const Text('Only includes vegan meals'),
                  value: _isVegan,
                  onChanged: (value) => setState(() {
                    _isVegan = value;
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
