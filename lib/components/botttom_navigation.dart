import 'package:flutter/material.dart';

class MenuNavBottom extends StatefulWidget {
  @override
  _MenuNavBottom createState() => _MenuNavBottom();
}

class _MenuNavBottom extends State<MenuNavBottom> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          title: Text('Business'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          title: Text('School'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          title: Text('Account'),
        ),
      ],
      currentIndex: _selectedIndex,
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }
}