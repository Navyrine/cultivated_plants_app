import 'package:cultivated_plants_app/data/dummy_data.dart';
import 'package:cultivated_plants_app/model/cultivated_plants.dart';
import 'package:cultivated_plants_app/screen/categories_screen.dart';
import 'package:cultivated_plants_app/screen/filter_screen.dart';
import 'package:cultivated_plants_app/screen/plants_screen.dart';
import 'package:cultivated_plants_app/widget/main_drawer.dart';
import 'package:flutter/material.dart';

const kInitialFilter = {
  Filter.humus: false,
  Filter.alluvial: false,
  Filter.volcanic: false
};

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedScreenIndex = 0;
  var activePageTitle = "Categories";
  Map<Filter, bool> _selectedFilters = kInitialFilter;
  final List<CultivatedPlants> _favoritePlant = [];

  void selectedPage(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  void _selectedFilterScreen(String identifier) async {
    Navigator.of(context).pop();
    if (identifier == "filters") {
      final result =
          await Navigator.of(context).push<Map<Filter, bool>>(MaterialPageRoute(
        builder: (ctx) => FilterScreen(currentFilter: _selectedFilters),
      ));

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

  void _toogleFavorite(CultivatedPlants plant) {
    final isExisting = _favoritePlant.contains(plant);

    if (isExisting) {
      setState(() {
        _favoritePlant.remove(plant);
      });
      _showMessageFavorite("Successfully remove from favorite");
    } else {
      setState(() {
        _favoritePlant.add(plant);
      });
      _showMessageFavorite("Successfully add to favorite");
    }
  }

  @override
  Widget build(BuildContext context) {
    final availableFilterPlants = dummyCultivatedPlants.where((plants) {
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
      onToogleFavorite: _toogleFavorite,
    );

    if (_selectedScreenIndex == 1) {
      activeScreen = PlantsScreen(
        cultivatedPlants: _favoritePlant,
        onToogleFavorite: _toogleFavorite,
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
