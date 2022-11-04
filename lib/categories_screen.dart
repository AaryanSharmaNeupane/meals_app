import 'package:flutter/material.dart';
import './categories_item.dart';
import './dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Rustu's Meal",
          style: TextStyle(fontFamily: 'Raleway'),
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: dummyCategories.map((catData) {
          return CategoriesItem(catData.title, catData.color);
        }).toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
