import 'package:flutter/material.dart';
import 'package:appdev_final_project/features/cards/card1.dart';
import 'package:appdev_final_project/features/cards/card2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List pages = [
    // TODO: Repclace with Card1
    const Card1(),
    // TODO: Repclace with Card2
    const Card2(),
  ];

  //set the screen based on selected index by default we set it to 0 giving us a starting screen of card1()
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      //Create a bottom navigation with two items. "Topic" and "Members" both have title and icons to represent them.
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_rounded), label: "Topic"),
          const BottomNavigationBarItem(
            icon: Icon(Icons.groups_outlined),
            label: "Members",
          ),
        ],
      ),
    );
  }
}
