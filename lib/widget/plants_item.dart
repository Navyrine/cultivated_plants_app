import 'package:cultivated_plants_app/model/cultivated_plants.dart';
import 'package:cultivated_plants_app/widget/plant_item_trait.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class PlantsItem extends StatelessWidget {
  const PlantsItem({super.key, required this.plant});

  final CultivatedPlants plant;

  String get complexityText {
    return plant.complexity.name[0].toUpperCase() +
        plant.complexity.name.substring(1);
  }

  String get seedPriceText {
    return plant.seedPrice.name[0].toUpperCase() +
        plant.seedPrice.name.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: () {},
        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(plant.imageUrl),
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 44),
                child: Column(
                  children: [
                    Text(plant.title,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PlantItemTrait(icon: Icons.schedule, label: "${plant.duration} day"),
                        const SizedBox(width: 12),
                        PlantItemTrait(icon: Icons.work, label: complexityText),
                        const SizedBox(width: 12),
                        PlantItemTrait(icon: Icons.attach_money, label: seedPriceText)
                      ],
                    )
                  ],
                ),
              ),
              )
          ],
        ),
      ),
    );
  }
}
