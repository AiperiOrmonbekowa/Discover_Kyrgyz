import 'package:discover_kyrgyz/presention/home/constants/colors_const.dart';
import 'package:flutter/material.dart';

class PriceAndButton extends StatelessWidget {
  final String price;
  const PriceAndButton({
    super.key,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Text(
                'Price',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor1,
                ),
              ),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  color: AppColors.textColor5,
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              elevation: MaterialStateProperty.all(7),
              backgroundColor: MaterialStateProperty.all(AppColors.iconColor2),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              minimumSize: MaterialStateProperty.all(const Size(223, 56)),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Book Now",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textColor6,
                  ),
                ),
                SizedBox(width: 12),
                Icon(
                  Icons.arrow_right,
                  size: 24,
                  color: AppColors.textColor6,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
