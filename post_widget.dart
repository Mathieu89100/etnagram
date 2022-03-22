import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  PostWidget({Key? key}) : super(key: key);

  final List postItems = [
    {
      "pseudo": 'Magalie',
      "photo": "../assets/images/photo/norway.jpeg",
      "photoProfil": "../assets/images/profil/Magalie.jpg",
      "description": "#Norvège #Vacances "
    },
    {
      "pseudo": 'Jim Carrey',
      "photo": "../assets/images/photo/family.jpg",
      "photoProfil": "../assets/images/profil/Jim-Carrey.jpg",
      "description": "My family !"
    },
    {
      "pseudo": 'Emma',
      "photo": "../assets/images/photo/japon.jpg",
      "photoProfil": "../assets/images/profil/Emma.jpg",
      "description": "#Japan #Autumn"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: postItems.map((post) {
        return Column(
          children: [
            Container(
                height: 50,
                // color: Colors.grey,
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(post['photoProfil']),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      post['pseudo'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 5),
                    Image.asset(
                      '../assets/images/badge.png',
                      height: 20,
                    ),
                    Expanded(child: Container()),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_horiz),
                    )
                  ],
                )),
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(post['photo']),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.message),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                ),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage(post['photoProfil']),
                  ),
                  const SizedBox(width: 10),
                  RichText(
                    text: TextSpan(
                      text: 'Aimé par ',
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        TextSpan(
                          text: post['pseudo'],
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        const TextSpan(text: ' et '),
                        const TextSpan(
                          text: '86 autres personnes',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        post['pseudo'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          post['description'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 5),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'Il y a 1 heure',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade400),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        );
      }).toList(),
    );
  }
}
