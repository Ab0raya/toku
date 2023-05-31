import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/items.dart';
class ColorsScreen extends StatelessWidget {
  const ColorsScreen({Key? key}) : super(key: key);
  final List <ModelItem> colorsData = const[
    ModelItem(sound: 'black.wav', jpText: 'Burakku', enText: 'black', image: 'assets/images/colors/color_black.png'),
    ModelItem(sound: 'brown.wav', jpText: 'chairo ', enText: 'brown', image: 'assets/images/colors/color_brown.png'),
    ModelItem(sound: 'dusty yellow.wav', jpText: 'Hokripoikiro', enText: 'dusty yellow', image: 'assets/images/colors/color_dusty_yellow.png'),
    ModelItem(sound: 'gray.wav', jpText: 'gurē ', enText: 'gray', image: 'assets/images/colors/color_gray.png'),
    ModelItem(sound: 'green.wav', jpText: 'midori ', enText: 'green', image: 'assets/images/colors/color_green.png'),
    ModelItem(sound: 'red.wav', jpText: 'aka ', enText: 'red', image: 'assets/images/colors/color_red.png'),
    ModelItem(sound: 'white.wav', jpText: 'shiro ', enText: 'white', image: 'assets/images/colors/color_white.png'),
    ModelItem(sound: 'yellow.wav', jpText: 'kiiro', enText: 'yellow', image: 'assets/images/colors/yellow.png'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff40344f),
      appBar: AppBar(
        backgroundColor: const Color(0xff40344f),
        centerTitle: true,
        title: const Text(
          'Family members',
          style: TextStyle(fontSize: 22),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: colorsData.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (ctx, index) {
              return Item(item: colorsData[index],soundPath: 'assets/sounds/colors/',);
            }),
      ),
    );
  }
}
