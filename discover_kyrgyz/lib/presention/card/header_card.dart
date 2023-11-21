import 'package:discover_kyrgyz/presention/home/constants/colors_const.dart';
import 'package:flutter/material.dart';

class ImageHeader extends StatelessWidget {
  final String imagePath;

  const ImageHeader({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Rectangle image
        Padding(
          padding: const EdgeInsets.all(23.0),
          child: Image.asset(
            imagePath,
          ),
        ),
        // Back button
        Positioned(
          top: 40,
          left: 35,
          child: Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_outlined,
                size: 15,
                color: AppColors.iconColor1,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),

        // Favorite button
        Positioned(
          bottom: 0,
          right: 35,
          child: InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Added to Favorite"),
                ),
              );
            },
            child: Container(
              width: 47,
              height: 47,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 15.0,
                    spreadRadius: 5.0,
                  ),
                ],
              ),
              child: const Icon(
                Icons.favorite,
                color: Colors.red,
                size: 35.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
