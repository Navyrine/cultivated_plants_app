import 'package:cultivated_plants_app/data/dummy_data.dart';
import 'package:cultivated_plants_app/widget/category_grid_item.dart';
// import 'package:cultivated_plants_app/model/category.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  // void _selectedCategoryItem(BuildContext context, Category category)
  // {
  //   final fliteredPlants = dummyCultivatedPlants.where((plant) => plant.categories.contains(category.id),).toList();
  // }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(26),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        for (final category in availableCategories) 
          CategoryGridItem(category: category, onSelectedItem: () {})
      ],
    );
  }
}
