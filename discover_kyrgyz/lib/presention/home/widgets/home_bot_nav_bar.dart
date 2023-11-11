import 'package:discover_kyrgyz/presention/home/constants/assets_const.dart';
import 'package:discover_kyrgyz/presention/home/constants/colors_const.dart';
import 'package:flutter/material.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            color: Color.fromARGB(255, 221, 220, 220),
          ),
        ],
      ),
      child: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            // icon: Image.asset('assets/icons/Home.svg'),
            icon: Icon(Icons.home),

            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AssetsConst.ticketBottomNavMenu),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AssetsConst.heartBottomNavMenu),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(AssetsConst.profileBottomNavMenu),
            label: '',
          ),
        ],
        backgroundColor: AppColors.iconColor1,
        elevation: 30,
        selectedItemColor: AppColors.iconColor2,
        unselectedItemColor: AppColors.iconColor1,
      ),
    );
  }
}
