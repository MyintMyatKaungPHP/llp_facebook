import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:llp_facebook/screens/home_screen.dart';
import 'package:llp_facebook/screens/video_screen.dart';
import 'package:llp_facebook/screens/friends_screen.dart';
import 'package:llp_facebook/screens/profile_screen.dart';
import 'package:llp_facebook/screens/notifications_screen.dart';
import 'package:llp_facebook/screens/menu_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LLP_Facebook_UI",
      home: MainScaffold(),
    );
  }
}

class MainScaffold extends StatefulWidget {

  const MainScaffold({super.key});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  // Current selected index in Bottom Navigation Bar
  int _selectedIndex = 0;

  // List of screens to navigate
  final List<Widget> _screens = [
    HomeScreen(),
    VideoScreen(),
    FriendsScreen(),
    ProfileScreen(),
    NotificationsScreen(),
    MenuScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;  // Update selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: 'Video',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Friends',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
      ),
    );
  }
}