import 'package:flutter/material.dart';
import 'package:meals_app/models/Category.dart';
import 'package:meals_app/screens/category_meal_screen.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  CategoryItem(this.category);

  // void selectCategory(BuildContext context) {
  //   Navigator.of(context).push(MaterialPageRoute(builder: (_) {
  //     return CategoryMealScreen(title,color);
  //   }));
  // }

  void selectCategoryByNamedPush(BuildContext context) {
    Navigator.of(context).pushNamed(CategoryMealScreen.routeName, arguments: category);
  }




  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategoryByNamedPush(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          category.title,
          style: TextStyle(
              fontSize: 20,  color: Colors.white),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.color.withOpacity(0.7),
              category. color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
