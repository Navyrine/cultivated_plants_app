import 'package:cultivated_plants_app/data/dummy_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final plantsProvider = Provider((ref) {
  return dummyCultivatedPlants;
});