import 'package:flutter/material.dart';
import 'package:meals_app/models/Category.dart';

class CategoryMealScreen extends StatelessWidget {

  // final String title;
  // final Color color;
  //
  // CategoryMealScreen(this.title, this.color);

  @override
  Widget build(BuildContext context) {

    final refArg = ModalRoute.of(context).settings.arguments as Category;

    return Scaffold(
      appBar: AppBar(
        title: Text(refArg.title),
      ),
      body: Center(
        child: Text("This is Recipe page."),
      ),
    );
  }
}
