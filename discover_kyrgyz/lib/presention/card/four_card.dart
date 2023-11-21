import 'package:discover_kyrgyz/presention/home/constants/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FourCard extends StatelessWidget {
  final String image;
  final String text;

  const FourCard({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: AppColors.iconColor4,
      elevation: 0,
      child: Container(
        width: 80,
        height: 77,
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              image,
              width: 35,
              height: 23,
              color: AppColors.iconColor1,
            ),
            const SizedBox(height: 5),
            Text(
              text,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: AppColors.textColor2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
