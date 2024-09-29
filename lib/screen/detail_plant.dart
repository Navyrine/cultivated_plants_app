import 'package:cultivated_plants_app/model/cultivated_plants.dart';
import 'package:flutter/material.dart';

class DetailPlant extends StatelessWidget {
  const DetailPlant({super.key, required this.plantsDetail});

  final CultivatedPlants plantsDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(plantsDetail.title),
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
