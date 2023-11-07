import 'package:discover_kyrgyz/widgets/home_bot_nav_bar.dart';
import 'package:discover_kyrgyz/widgets/home_view_appbar.dart';

import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentindex = 0;
  final currentscreen = const [HomeViewAppBar()];
  void screentap(int index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentscreen[currentindex],
      bottomNavigationBar: const HomeBottomNavigationBar(),
    );
  }
}
