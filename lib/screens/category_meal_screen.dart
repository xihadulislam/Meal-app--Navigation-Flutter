import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {

  final String title;
  final Color color;

  CategoryMealScreen(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text("This is Recipe page."),
      ),
    );
  }
}
