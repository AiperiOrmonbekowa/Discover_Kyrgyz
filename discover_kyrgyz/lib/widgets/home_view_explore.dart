import 'package:discover_kyrgyz/constants/colors_const.dart';
import 'package:flutter/material.dart';

class HomeViewExplore extends StatelessWidget {
  const HomeViewExplore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 200,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            //text of explore aspen
            const SizedBox(
              height: 100,
              width: 110,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore',
                    style: TextStyle(fontSize: 16, color: AppColors.textColor1),
                  ),
                  Text(
                    'Aspen',
                    style: TextStyle(fontSize: 32, color: AppColors.textColor1),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            SizedBox(
              height: 40,
              width: 150,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.location_on,
                      color: AppColors.iconColor2,
                    ),
                  ),
                  const Text(
                    'Aspen, USA',
                    style: TextStyle(fontSize: 12, color: AppColors.textColor2),
                  ),
                  DropdownButton(
                    items: const [],
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: AppColors.iconColor2,
                    ),
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
