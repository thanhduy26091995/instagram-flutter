import 'package:flutter/material.dart';
import 'package:instagram_flutter/app/config/app_color.dart';
import 'package:instagram_flutter/app/config/app_icon.dart';
import 'package:instagram_flutter/app/config/app_image.dart';
import 'package:instagram_flutter/presentation/main/search/search_screen_page.dart';

import 'home/home_screen_page.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({super.key});

  @override
  State<MainScreenPage> createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreenPage(),
    const SearchScreenPage(),
    const Text('Profile Page'),
    const Text('Home Page'),
    const Text('Search Page')
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(child: _widgetOptions[_selectedIndex]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.backgroundBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: AppIcon.icHome.widget(),
              activeIcon: AppIcon.icHomeSelected.widget(),
              label: ""),
          BottomNavigationBarItem(
              icon: AppIcon.icSearch.widget(),
              activeIcon: AppIcon.icSearchSelected.widget(),
              label: ""),
          BottomNavigationBarItem(icon: AppIcon.icAdd.widget(), label: ""),
          BottomNavigationBarItem(
              icon: AppIcon.icHeart.widget(),
              activeIcon: AppIcon.icHeartSelected.widget(),
              label: ""),
          BottomNavigationBarItem(
              icon: _avatarIcon(), activeIcon: _avatarIconSelected(), label: "")
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _avatarIcon() {
    return SizedBox(
      width: 24,
      height: 24,
      child: AppImage.avatar1.widget(),
    );
  }

  Widget _avatarIconSelected() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColor.primaryTextColor, width: 0.5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: _avatarIcon(),
      ),
    );
  }
}
