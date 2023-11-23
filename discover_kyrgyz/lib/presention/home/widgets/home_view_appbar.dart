import 'package:discover_kyrgyz/presention/home/constants/colors_const.dart';
import 'package:discover_kyrgyz/presention/home/widgets/card_page.dart';
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
          padding: EdgeInsets.only(top: 4, left: 10, right: 10),
          child: HomeBodySearch(),
        ),
        const SizedBox(
          height: 6,
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
        const Row(
          children: [
            CardPage(
              image: 'assets/images/m.png',
              title: 'Alley Palace',
              icon: Icons.star,
              text: '4,1',
            ),
            CardPage(
              image: 'assets/images/n.png',
              title: 'Coeurdes Alpes',
              icon: Icons.star,
              text: '4,5',
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 25),
          child: Text(
            'Recommended',
            style: TextStyle(
                color: AppColors.textColor1,
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
        ),
        const Row(children: [
          BodyCard(
            image: 'assets/images/o.png',
          ),
          BodyCard(
            image: 'assets/images/p.png',
          )
        ])
      ],
    );
  }
}

class BodyCard extends StatelessWidget {
  const BodyCard({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 169,
      height: 120,
      margin: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
