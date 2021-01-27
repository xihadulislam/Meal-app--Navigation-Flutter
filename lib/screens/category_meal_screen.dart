import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/Category.dart';
import 'package:meals_app/widgets/Meal_Item.dart';

class CategoryMealScreen extends StatelessWidget {

  static const routeName = '/categories-meals';

  // final String title;
  // final Color color;
  //
  // CategoryMealScreen(this.title, this.color);

  @override
  Widget build(BuildContext context) {

    final refArg = ModalRoute.of(context).settings.arguments as Category;

    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(refArg.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(refArg.title),
      ),
      body: ListView.builder(
        itemCount:  categoryMeals.length,
        itemBuilder:  (ctx, i) => MealItem(categoryMeals[i]),

      )
    );
  }
}
