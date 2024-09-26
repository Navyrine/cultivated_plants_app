enum Complexity {
  easy,
  medium,
  hard
}

enum SeedPrice {
  affordable,
  pricey,
  luxurious,
}

class CultivatedPlants {
  const CultivatedPlants({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.preparations,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.seedPrice,
    required this.isHumus,
    required this.isAlluvial, 
    required this.isVolcanic,
  });

  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> preparations;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final SeedPrice seedPrice;
  final bool isHumus;
  final bool isAlluvial;
  final bool isVolcanic;
}