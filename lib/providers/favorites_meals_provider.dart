import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal_app/models/meal.dart';

class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  // initial data is declared by adding a contructor function
  FavoriteMealsNotifier() : super([]);
  // we dont expect any parameters, instead, we use ' : ' and then super(); to reach the parent classs
  // to super(); we pass our initial data.

  // we add any methods we want to modify this data
  void toggleMealFavoriteStatus(Meal meal) {
    final isFavorite = state.contains(meal);

    if (isFavorite) {
      state = state.where((m) => m.id != meal.id).toList();
    } else {
      state = [...state, meal];
    }
  }
}

final favoritesMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>(
      (ref) => FavoriteMealsNotifier(),
    );
