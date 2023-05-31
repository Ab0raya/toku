import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/items.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({Key? key}) : super(key: key);
  final List<ModelItem> numbersData = const [
    ModelItem(
      jpText: 'Ichi',
      enText: 'one',
      image: 'assets/images/numbers/number_one.png',
      sound: 'number_one_sound.mp3',
    ),
    ModelItem(
      jpText: 'ni',
      enText: 'two',
      image: 'assets/images/numbers/number_two.png',
      sound: 'number_two_sound.mp3',
    ),
    ModelItem(
      jpText: 'mittsu',
      enText: 'three',
      image: 'assets/images/numbers/number_three.png',
      sound: 'number_three_sound.mp3',
    ),
    ModelItem(
      jpText: 'shi',
      enText: 'four',
      image: 'assets/images/numbers/number_four.png',
      sound: 'number_four_sound.mp3',
    ),
    ModelItem(
      jpText: 'go',
      enText: 'five',
      image: 'assets/images/numbers/number_five.png',
      sound: 'number_five_sound.mp3',
    ),
    ModelItem(
      jpText: 'roku',
      enText: 'six',
      image: 'assets/images/numbers/number_six.png',
      sound: 'number_six_sound.mp3',
    ),
    ModelItem(
      jpText: 'Sebun',
      enText: 'seven',
      image: 'assets/images/numbers/number_seven.png',
      sound: 'number_seven_sound.mp3',
    ),
    ModelItem(
      jpText: 'hachi',
      enText: 'eight',
      image: 'assets/images/numbers/number_eight.png',
      sound: 'number_eight_sound.mp3',
    ),
    ModelItem(
      jpText: 'kyū',
      enText: 'nine',
      image: 'assets/images/numbers/number_nine.png',
      sound: 'number_nine_sound.mp3',
    ),
    ModelItem(
      jpText: 'jū',
      enText: 'ten',
      image: 'assets/images/numbers/number_ten.png',
      sound: 'number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff40344f),
      appBar: AppBar(
        backgroundColor: const Color(0xff40344f),
        centerTitle: true,
        title: const Text(
          'Numbers',
          style: TextStyle(fontSize: 22),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: numbersData.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (ctx, index) {
              return Item(item: numbersData[index],soundPath: 'assets/sounds/numbers/',);
            }),
      ),
    );
  }
}
