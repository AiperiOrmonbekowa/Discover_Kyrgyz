import 'package:discover_kyrgyz/presention/card/content_card.dart';
import 'package:discover_kyrgyz/presention/card/footer_card.dart';
import 'package:discover_kyrgyz/presention/card/four_card.dart';
import 'package:discover_kyrgyz/presention/card/header_card.dart';
import 'package:flutter/material.dart';

class AlpesCard extends StatefulWidget {
  const AlpesCard({Key? key}) : super(key: key);

  @override
  State<AlpesCard> createState() => _AplesCardState();
}

class _AplesCardState extends State<AlpesCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ImageHeader(
                    imagePath: 'assets/images/rectangle.png',
                  ),
                  ContentWidget(
                    title: 'Coeurdes Alpes',
                    rating: '4.5',
                    reviews: '(355 Reviews)',
                    description:
                        'Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining, shopping, and Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing,can get to a storybook alpine town in America.',
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 11.0,
                      horizontal: 23.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Facilities',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FourCard(
                              text: '1 Heater',
                              image: 'assets/icons/wifi.svg',
                            ),
                            FourCard(
                              text: 'Dinner',
                              image: 'assets/icons/dinner.svg',
                            ),
                            FourCard(
                              text: '1 Tub',
                              image: 'assets/icons/tude.svg',
                            ),
                            FourCard(
                              text: 'Pool',
                              image: 'assets/icons/pool.svg',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  PriceAndButton(price: '\$199'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
