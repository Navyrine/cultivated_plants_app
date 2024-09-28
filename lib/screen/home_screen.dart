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
    _selectedScreenIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      body: const Text("Halaman"),
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