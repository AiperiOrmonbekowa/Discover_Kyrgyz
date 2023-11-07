import 'package:discover_kyrgyz/constants/colors_const.dart';
import 'package:flutter/material.dart';

class HomeViewBodyMenu extends StatelessWidget {
  final String section;
  const HomeViewBodyMenu({super.key, required this.section});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 89,
      /* decoration: BoxDecoration(
        color: const Color(0xffF3F8FE),
        borderRadius: BorderRadius.circular(33),
      ), */
      child: Center(
        child: Text(
          section,
          style: const TextStyle(
              //  color: AppColors.textColor3, fontWeight: FontWeight.w700),
              color: AppColors.textColor2),
        ),
      ),
    );
  }
}
