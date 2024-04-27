import 'package:educacao_alimentar/views/activities/activities_screen.dart';
import 'package:educacao_alimentar/views/home/intro_screen.dart';
import 'package:educacao_alimentar/views/info/info_screen.dart';
import 'package:educacao_alimentar/views/stickers/stickers_screen.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int currentIndex = 0;

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          IntroScreen(),
          ActivitiesScreen(),
          StickersScreen(),
          InfoScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            pageController.jumpToPage(index);
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.cyan,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.article_outlined), label: 'Atividades'),
          BottomNavigationBarItem(
              icon: Icon(Icons.image_outlined), label: 'Figurinhas'),
          BottomNavigationBarItem(
              icon: Icon(Icons.info_outlined), label: 'Info'),
        ],
      ),
    );
  }
}
