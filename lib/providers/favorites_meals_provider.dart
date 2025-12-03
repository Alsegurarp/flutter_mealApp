import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meal_app/models/meal.dart';

class FavoriteMealsNotifier extends Notifier<List<Meal>> {
  @override
  List<Meal> build() {
    return [];
  }

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
    NotifierProvider<FavoriteMealsNotifier, List<Meal>>(
      FavoriteMealsNotifier.new,
    );
