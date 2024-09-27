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
    required this.efficacy,
    required this.benefits,
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
  final List<String> efficacy;
  final List<String> benefits;
  final int duration;
  final Complexity complexity;
  final SeedPrice seedPrice;
  final bool isHumus;
  final bool isAlluvial;
  final bool isVolcanic;
}