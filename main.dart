import 'package:flutter/material.dart';
import 'story_widget.dart';
import 'post_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Etnagram',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
            ),
          ),
          title: Image.asset(
            '../assets/images/etnagram.png',
            height: 60,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.send_outlined,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              StoryWidget(),
              PostWidget(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.shade700,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Accueil'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Chercher'),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt_rounded), label: 'Mes Photos'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favoris'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'Mon Profil'),
          ],
        ),
      ),
    );
  }
}


