import 'package:flutter/material.dart';
import 'package:send_music/views/profileView.dart';
import 'package:send_music/util/colors.dart';
import 'package:send_music/util/dimensions.dart';
import 'package:send_music/appBars/homeAppBar.dart';
import 'package:send_music/appBars/exploreAppBar.dart';
import 'package:send_music/appBars/downloadsAppBar.dart';
import 'package:send_music/appBars/notificationAppBar.dart';
import 'package:send_music/appBars/profileAppBar.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),

    );
  }
}


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Center(
      child: Text(
        'Index 0: Home',
        style: optionStyle,
      ),
    ),
    Center(
      child: Text(
        'Index 1: Explore',
        style: optionStyle,
      ),
    ),
    Center(
      child: Text(
        'Index 2: Archive',
        style: optionStyle,
      ),
    ),
    Center(
      child: Text(
        'Index 2: Notification',
        style: optionStyle,
      ),
    ),
    ProfileView(),
  ];
  static const List<Widget> _appBarOptions = [
    HomeAppBar(),
    ExploreAppBar(),
    DownloadsAppBar(),
    NotificationAppBar(),
    ProfileAppBar(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDark,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: _appBarOptions.elementAt(_selectedIndex),
      ),

      body: Container(
        padding: const EdgeInsets.only(top: Dimen.regularPadding),
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
        backgroundColor: AppColors.navBar,
        unselectedItemColor: AppColors.white,
        selectedItemColor: AppColors.primaryLight,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

