import 'package:flutter/material.dart';
import 'package:meal_app/data/dummy_data.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/screens/meals.dart';
import 'package:meal_app/widgets/new_category_grid_item.dart';
import 'package:meal_app/models/category.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key, this.availableMeals});

  final List<Meal>? availableMeals;

  void _selectCategory(BuildContext context, Category category) {
    final filteredList = availableMeals!
        .where((meal) => meal.categories.contains(category.id))
        .toList(); // se hace un filtro en la lista de comidas - cada una de las meals tiene diferente id en su categoria
    // Si es la categoria que estoy invocando (a la que hice tap), es true, pasa el filtro y me muestra esa lista de comida

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) =>
            MealsScreen(title: category.title, meals: filteredList),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ), // This delegates how many columns you want
      children: [
        for (final categories in availableCategories)
          CategoryGridItem(
            category: categories,
            onSelectedCategory: () {
              _selectCategory(context, categories);
            },
          ),
      ],
    );
  }
}
