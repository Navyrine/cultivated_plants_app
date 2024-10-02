import 'package:cultivated_plants_app/provider/favorite_plants_provider.dart';
import 'package:cultivated_plants_app/provider/meals_provider.dart';
import 'package:cultivated_plants_app/screen/categories_screen.dart';
import 'package:cultivated_plants_app/screen/filter_screen.dart';
import 'package:cultivated_plants_app/screen/plants_screen.dart';
import 'package:cultivated_plants_app/widget/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
  Map<Filter, bool> _selectedFilters = kInitialFilter;

  void selectedPage(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  void _selectedFilterScreen(String identifier) async {
    Navigator.of(context).pop();
    if (identifier == "filters") {
      final result = await Navigator.of(context).push<Map<Filter, bool>>(
        MaterialPageRoute(
          builder: (ctx) => FilterScreen(currentFilter: _selectedFilters),
        ),
      );
      setState(() {
        _selectedFilters = result ?? kInitialFilter;
      });
    }
    
  }

  void _showMessageFavorite(String text) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final meals = ref.watch(mealsProvider);
    final availableFilterPlants = meals.where((plants) {
      if (_selectedFilters[Filter.humus]! && !plants.isHumus) {
        return false;
      }
      if (_selectedFilters[Filter.alluvial]! && !plants.isAlluvial) {
        return false;
      }
      if (_selectedFilters[Filter.volcanic]! && !plants.isVolcanic) {
        return false;
      }
      return true;
    }).toList();

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
