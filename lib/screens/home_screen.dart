import 'package:flutter/material.dart';
import 'package:toku/screens/colors_screen.dart';
import 'package:toku/screens/family_members_screen.dart';
import 'package:toku/screens/numbers_screen.dart';
import 'package:toku/screens/phrases_screen.dart';

import '../components/category_item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff40344f),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Toku',
          style: TextStyle(fontSize: 22),
        ),
        elevation: 0,
        backgroundColor: const Color(0xff40344f),
        leading: Image.asset(
          'assets/images/more/settings.png',
          scale: 4,
        ),
        actions: [
          Image.asset(
            'assets/images/more/hand_wave.png',
            scale: 4,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 80,
                bottom: 30,
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/more/man.png',
                    scale: 3,
                  ),
                  const Text(
                    'Good morning',
                    style: TextStyle(
                        fontFamily: 'Caveat',
                        color: Colors.white,
                        fontSize: 40),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    children: [
                      CategoryItem(
                          'Numbers',
                          'assets/images/more/number-blocks.png',
                          () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const NumbersScreen();
                        }));
                      },),
                      CategoryItem(
                          'Family members', 'assets/images/more/family.png',
                          () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const FamilyMembersScreen();
                        }));
                      }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    children: [
                      CategoryItem('Colors', 'assets/images/more/brush.png',
                          () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const ColorsScreen();
                        }));
                      }),
                      CategoryItem(
                          'Phrases', 'assets/images/more/training-phrase.png',
                          () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const PhrasesScreen();
                        }));
                      }),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
