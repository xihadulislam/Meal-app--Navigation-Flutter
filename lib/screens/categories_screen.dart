import 'package:flutter/material.dart';
import 'package:meals_app/data/demo_data.dart';
import 'package:meals_app/widgets/Category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliMeal', style:  TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: CATEGORIES
            .map(
              (catData) => CategoryItem(
                catData.title,
                catData.color,
              ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
