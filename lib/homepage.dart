import 'package:demoproject/HomeScreen.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Center(
      child: Text(
        'Index 1: Request',
        style: optionStyle,
      ),
    ),
    Center(
      child: Text(
        'Index 2: Enrollments',
        style: optionStyle,
      ),
    ),
    Center(
      child: Text(
        'Index 3: Notifications',
        style: optionStyle,
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_sharp),
            label: 'Requests',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Enrollments',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.chat),
          //   label: 'bvb',
          // ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black54,
        onTap: _onItemTapped,
      ),
    );
  }
}
