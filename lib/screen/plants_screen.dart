import 'package:cultivated_plants_app/model/cultivated_plants.dart';
import 'package:cultivated_plants_app/widget/plants_item.dart';
import 'package:flutter/material.dart';

class PlantsScreen extends StatelessWidget 
{
  const PlantsScreen({
    super.key,
    this.title,
    required this.cultivatedPlants
  });

  final String? title;
  final List<CultivatedPlants> cultivatedPlants;

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Uh oh...nothing here!",
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Theme.of(context).colorScheme.onBackground),),
          const SizedBox(height: 16),
          Text("Try selecting deifferent category", style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.onBackground),)
        ],
      ),
    );

    if (cultivatedPlants.isNotEmpty) {
      content = ListView.builder(
        itemCount: cultivatedPlants.length,
        itemBuilder: (ctx, index) => PlantsItem(plant: cultivatedPlants[index]),
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