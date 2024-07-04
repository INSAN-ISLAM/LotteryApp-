import 'package:flutter/material.dart';
import 'AccountPage.dart';
import 'HomePage.dart';
import 'ResultPage.dart';
import 'ScanPage.dart';
import 'TicketsPage.dart';

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({Key? key}) : super(key: key);

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  int _selectedScreen = 0;
  final List<Widget> _screens = const [
    Home(),
    RESULTS(),
    SCAN(),
    TICKETS(),
    ACCOUNT(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            Expanded(child: _screens[_selectedScreen]),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black38,
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        onTap: (index) {
          _selectedScreen = index;
          setState(() {});
        },
        elevation: 4,
        currentIndex: _selectedScreen,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.new_label_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.done_outline), label: 'RESULTS'),
          BottomNavigationBarItem(
              icon: Icon(Icons.close_outlined), label: 'SCAN'),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit_sharp), label: 'TICKETS'),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit_sharp), label: 'ACCOUNT'),
        ],
      ),
    );
  }
}