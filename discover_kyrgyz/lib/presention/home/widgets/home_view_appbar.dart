import 'package:discover_kyrgyz/presention/home/constants/colors_const.dart';
import 'package:discover_kyrgyz/presention/home/widgets/custo_widgets/home_view_body_menu.dart';
import 'package:discover_kyrgyz/presention/home/widgets/home_body_search.dart';
import 'package:discover_kyrgyz/presention/home/widgets/home_view_explore.dart';
import 'package:flutter/material.dart';

class HomeViewAppBar extends StatefulWidget {
  const HomeViewAppBar({super.key});

  @override
  State<HomeViewAppBar> createState() => _HomeViewAppBarState();
}

class _HomeViewAppBarState extends State<HomeViewAppBar> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 20,
        ),
        const HomeViewExplore(),
        const Padding(
          padding: EdgeInsets.all(10),
          child: HomeBodySearch(),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 270,
          height: 60,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              HomeViewBodyMenu(section: 'Location'),
              HomeViewBodyMenu(section: 'Hotels'),
              HomeViewBodyMenu(section: 'Food'),
              HomeViewBodyMenu(section: 'Adventure'),
              HomeViewBodyMenu(section: 'Relaxition'),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Popular',
              style: TextStyle(
                  color: AppColors.textColor1,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 160,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'See all',
                style: TextStyle(
                  color: AppColors.textColor3,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
