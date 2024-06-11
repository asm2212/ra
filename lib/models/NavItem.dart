import 'package:flutter/material.dart';
import 'package:ra/screens/home/home_screen.dart';
import 'package:ra/screens/profile/prrofile_screen.dart';

class NavItem {
  final int id;
  final String icon;
  final Widget destination;

  NavItem({
    required this.id,
    required this.icon,
    required this.destination,
  });

  // Simplified the destinationChecker method
  bool destinationChecker() => destination != null;
}

// If we made any changes here Provider package rebuid those widget those use this NavItems
class NavItems extends ChangeNotifier {
  // By default, the first one is selected
  int selectedIndex = 0;

  void changeNavIndex({required int index}) {
    selectedIndex = index;
    // If any changes made it notify widgets that use the value
    notifyListeners();
  }

  List<NavItem> items = [
    NavItem(
      id: 1,
      icon: "assets/icons/home.svg",
      destination: HomeScreen(),
    ),
    NavItem(
      id: 2,
      icon: "assets/icons/list.svg",
      destination: HomeScreen(),
    ),
    NavItem(
      id: 3,
      icon: "assets/icons/camera.svg",
      destination: HomeScreen(),
    ),
    NavItem(
      id: 4,
      icon: "assets/icons/chef_nav.svg",
      destination: HomeScreen(),
    ),
    NavItem(
      id: 5,
      icon: "assets/icons/user.svg",
      destination: ProfileScreen(),
    ),
  ];
}
