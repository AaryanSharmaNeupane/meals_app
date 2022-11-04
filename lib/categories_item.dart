import 'package:flutter/material.dart';
import 'package:meals/categories_meals_screen.dart';

class CategoriesItem extends StatelessWidget {
  final String title;
  final Color color;

  CategoriesItem(this.title, this.color);

  Future selectCategory(BuildContext context) {
    return Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return CategoriesMealsScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
