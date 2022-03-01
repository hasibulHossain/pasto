import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final String title;
  final Widget body;

  const CustomScaffold({Key? key, required this.title, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        child: body,
        padding: const EdgeInsets.only(
          right: 10,
          left: 10,
        ),
      ),
    );
  }
}
