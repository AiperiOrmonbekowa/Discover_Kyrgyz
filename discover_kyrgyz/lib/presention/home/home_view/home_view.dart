import 'package:discover_kyrgyz/presention/home/bottom_nav_menu/heart.dart';
import 'package:discover_kyrgyz/presention/home/bottom_nav_menu/profile.dart';
import 'package:discover_kyrgyz/presention/home/bottom_nav_menu/ticket.dart';
import 'package:discover_kyrgyz/presention/home/constants/assets_const.dart';
import 'package:discover_kyrgyz/presention/home/widgets/home_view_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeViewAppBar(),
    Ticket(),
    Heart(),
    Profile(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AssetsConst.homeBottomNavMenu,
              color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AssetsConst.ticketBottomNavMenu,
              color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AssetsConst.heartBottomNavMenu,
              color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AssetsConst.profileBottomNavMenu,
              color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
