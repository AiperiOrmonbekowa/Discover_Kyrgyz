import 'package:discover_kyrgyz/presention/home/constants/colors_const.dart';
import 'package:flutter/material.dart';

class HomeViewBodyMenu extends StatelessWidget {
  final String section;
  const HomeViewBodyMenu({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 89,
      child: Center(
        child: Text(
          section,
          style: const TextStyle(color: AppColors.textColor2),
        ),
      ),
    );
  }
}
