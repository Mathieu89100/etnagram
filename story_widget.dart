import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({Key? key}) : super(key: key);

  final List storyItems = [
    {
      "pseudo": 'Magalie',
      "photo": "../assets/images/photo/magalie.jpg",
    },
    {
      "pseudo": 'Jim Carrey',
      "photo": "../assets/images/photo/jim-carrey.jpg",
    },
    {
      "pseudo": 'Chantal',
      "photo": "../assets/images/photo/chantal.jpg",
    },
    {
      "pseudo": 'Elon Musk',
      "photo": "../assets/images/photo/elon-musk.jpg",
    },
    {
      "pseudo": 'Emma',
      "photo": "../assets/images/photo/emma.jpg",
    },
    {
      "pseudo": 'Jeff Bezos',
      "photo": "../assets/images/photo/jeff-bezos.jpg",
    },
    {
      "pseudo": 'Christophe',
      "photo": "../assets/images/photo/christophe.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: storyItems.map((story) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      '../assets/images/cercle.png',
                      height: 70,
                    ),
                    Image.asset(
                      '../assets/images/cercle.png',
                      height: 68,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      backgroundImage: AssetImage(story['photo']),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  story['pseudo'],
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}