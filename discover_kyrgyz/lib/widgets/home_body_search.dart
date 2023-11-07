import 'package:discover_kyrgyz/constants/colors_const.dart';
import 'package:flutter/material.dart';

class HomeBodySearch extends StatefulWidget {
  const HomeBodySearch({super.key});

  @override
  State<HomeBodySearch> createState() => _HomeBodySearchState();
}

class _HomeBodySearchState extends State<HomeBodySearch> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: const Color.fromARGB(255, 235, 237, 254),
        prefixIcon: const Icon(
          Icons.search,
          color: AppColors.iconColor1,
          weight: 2,
        ),
        hintText: 'Find things to do',
        hintStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: AppColors.iconColor1),
      ),
    );
  }
}
