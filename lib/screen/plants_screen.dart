import 'package:cultivated_plants_app/model/cultivated_plants.dart';
import 'package:cultivated_plants_app/screen/detail_plant.dart';
import 'package:cultivated_plants_app/widget/plants_item.dart';
import 'package:flutter/material.dart';

class PlantsScreen extends StatelessWidget {
  const PlantsScreen({super.key, this.title, required this.cultivatedPlants, required this.onToogleFavorite});

  final String? title;
  final List<CultivatedPlants> cultivatedPlants;
  final void Function(CultivatedPlants plant) onToogleFavorite;

  void selectedPlant(BuildContext context, CultivatedPlants plant) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => DetailPlant(plantsDetail: plant, onToogleFavorite: onToogleFavorite,),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Uh oh...nothing here!",
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: Theme.of(context).colorScheme.onBackground),
          ),
          const SizedBox(height: 16),
          Text(
            "Try selecting deifferent category",
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Theme.of(context).colorScheme.onBackground),
          )
        ],
      ),
    );

    if (cultivatedPlants.isNotEmpty) {
      content = ListView.builder(
        itemCount: cultivatedPlants.length,
        itemBuilder: (ctx, index) => PlantsItem(
          plant: cultivatedPlants[index],
          onSelectedPlant: (plant) {
            selectedPlant(context, plant);
          },
        ),
      );
    }

    if (title == null) {
      return content;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content,
    );
  }
}
