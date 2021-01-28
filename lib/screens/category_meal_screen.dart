import 'package:flutter/material.dart';
import 'package:meals_app/models/Category.dart';
import 'package:meals_app/models/Meal.dart';
import 'package:meals_app/widgets/Meal_Item.dart';

class CategoryMealScreen extends StatefulWidget {
  static const routeName = '/categories-meals';

  final List<Meal> availableMeals;

  CategoryMealScreen(this.availableMeals);

  @override
  _CategoryMealScreenState createState() => _CategoryMealScreenState();
}

class _CategoryMealScreenState extends State<CategoryMealScreen> {
  var _loadedInitData = false;
  List<Meal> displayedMeals;
  var title = "";

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final refArg = ModalRoute.of(context).settings.arguments as Category;
      title = refArg.title;
      displayedMeals = widget.availableMeals.where((meal) {
        return meal.categories.contains(refArg.id);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: displayedMeals.length,
          itemBuilder: (ctx, i) => MealItem(displayedMeals[i]),
        ));
  }
}
