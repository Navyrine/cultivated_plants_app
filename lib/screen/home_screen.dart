import 'package:cultivated_plants_app/screen/categories_screen.dart';
import 'package:cultivated_plants_app/widget/main_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget
{
  const HomeScreen({
    super.key
  });

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> 
{
  int _selectedScreenIndex = 0;
  var activePageTitle = "Categories";

  void selectedPage(int index)
  {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  void _selectedFilterScreen(String identifier) async
  {
    Navigator.of(context).pop();
    if (identifier == "filters") {
      print("filters");
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = const CategoriesScreen();

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
           BottomNavigationBarItem(icon: Icon(Icons.emoji_nature), label: "Plants"),
           BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorite")
        ],
      ),
    );
  }
}