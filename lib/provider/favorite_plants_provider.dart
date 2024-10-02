import 'package:cultivated_plants_app/model/cultivated_plants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoritePlantsNotifier extends StateNotifier<List<CultivatedPlants>> {
  FavoritePlantsNotifier() : super([]);

  bool toogleFavoriteStatus(CultivatedPlants plant) {
    final plantFavorite = state.contains(plant);

    if (plantFavorite) {
      state = state.where((p) => p.id != plant.id).toList();
      return false;
    } else {
      state = [...state, plant];
      return true;
    }
  }
}

final favoritePlantsProvider =
    StateNotifierProvider<FavoritePlantsNotifier, List<CultivatedPlants>>(
        (ref) => FavoritePlantsNotifier());
