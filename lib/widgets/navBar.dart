import 'package:flutter/material.dart';
import 'package:send_music/util/colors.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.navBar,
      unselectedItemColor: AppColors.white,
      selectedItemColor: AppColors.primaryLight,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home ),
            label: "Home",
            backgroundColor: AppColors.white),
        BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "Explore",),
        BottomNavigationBarItem(
            icon: Icon(Icons.arrow_circle_down),
            label: "Saves"),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Saves"),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile"),
      ],
    );
  }
}