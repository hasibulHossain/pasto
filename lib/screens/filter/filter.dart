import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  const Filter({Key? key}) : super(key: key);

  static const route = '/filter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filter'),
      ),
      body: const Center(
        child: Text('filter'),
      ),
    );
  }
}
