import 'package:cultivated_plants_app/provider/plants_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Filter { humus, alluvial, volcanic }

class FilterNotifier extends StateNotifier<Map<Filter, bool>> {
  FilterNotifier()
      : super({
          Filter.humus: false,
          Filter.alluvial: false,
          Filter.volcanic: false,
        });

  void setFilter(Filter filter, bool isActive) {
    state = {...state, filter: isActive};
  }

  void setFilters(Map<Filter, bool> chooseFilter) {
    state = chooseFilter;
  }
}

final filterProvider = StateNotifierProvider<FilterNotifier, Map<Filter, bool>>(
  (ref) => FilterNotifier(),
);

final filteredPlantsProvider = Provider((ref) {
  final plants = ref.watch(plantsProvider);
  final activeFilter = ref.watch(filterProvider);

  return plants.where((plant) {
      if (activeFilter[Filter.humus]! && !plant.isHumus) {
        return false;
      }
      if (activeFilter[Filter.alluvial]! && !plant.isAlluvial) {
        return false;
      }
      if (activeFilter[Filter.volcanic]! && !plant.isVolcanic) {
        return false;
      }
      return true;
    }).toList();
});