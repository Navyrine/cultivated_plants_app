import 'package:cultivated_plants_app/model/cultivated_plants.dart';
import 'package:cultivated_plants_app/provider/favorite_plants_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailPlant extends ConsumerWidget {
  const DetailPlant({super.key, required this.plantsDetail});

  final CultivatedPlants plantsDetail;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritePlant = ref.watch(favoritePlantsProvider);
    final isFavorite = favoritePlant.contains(plantsDetail);

    return Scaffold(
      appBar: AppBar(
        title: Text(plantsDetail.title),
        actions: [
          IconButton(
            onPressed: () {
              final wasAdded = ref.read(favoritePlantsProvider.notifier).toogleFavoriteStatus(plantsDetail);
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(wasAdded ? "Plant added as favorite" : "Plant remove from favorite"),)
              );
            },
            icon: Icon(isFavorite ? Icons.star : Icons.star_border),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              plantsDetail.imageUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 14),
            Text(
              "Efficaccy",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 14),
            for (final efficacy in plantsDetail.efficacy)
              Text(
                efficacy,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
            const SizedBox(height: 24),
            Text(
              "Benefits",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 14),
            for (final benefits in plantsDetail.benefits)
              Text(
                benefits,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              )
          ],
        ),
      ),
    );
  }
}
