import 'package:cultivated_plants_app/provider/favorite_plants_provider.dart';
import 'package:cultivated_plants_app/screen/categories_screen.dart';
import 'package:cultivated_plants_app/screen/filter_screen.dart';
import 'package:cultivated_plants_app/screen/plants_screen.dart';
import 'package:cultivated_plants_app/widget/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cultivated_plants_app/provider/filter_provider.dart';

const kInitialFilter = {
  Filter.humus: false,
  Filter.alluvial: false,
  Filter.volcanic: false
};

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int _selectedScreenIndex = 0;

  void selectedPage(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  void _selectedFilterScreen(String identifier) async {
    Navigator.of(context).pop();
    if (identifier == "filters") {
      await Navigator.of(context).push<Map<Filter, bool>>(
        MaterialPageRoute(
          builder: (ctx) => const FilterScreen(),
        ),
      );
    }
    
  }

  @override
  Widget build(BuildContext context) {
    final availableFilterPlants = ref.watch(filteredPlantsProvider);

    Widget activeScreen = CategoriesScreen(
      availableFilterPlants: availableFilterPlants,
    );

    var activePageTitle = "Categories";

    if (_selectedScreenIndex == 1) {
      final favoritePlant = ref.watch(favoritePlantsProvider);

      activeScreen = PlantsScreen(
        cultivatedPlants: favoritePlant,
      );
      activePageTitle = "Your Favorites";
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      body: activeScreen,
      drawer: MainDrawer(onSelectedFilter: _selectedFilterScreen),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreenIndex,
        onTap: (index) {
          selectedPage(index);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.emoji_nature), label: "Plants"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorite")
        ],
      ),
    );
  }
}
