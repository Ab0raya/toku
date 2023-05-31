
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/items.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.item, required this.soundPath}) : super(key: key);
  final ModelItem item;
  final String soundPath ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white.withOpacity(0.3)),
      child: Column(
        children: [
          Text(
            item.jpText,
            style: const TextStyle(
              fontFamily: 'Caveat',
              color: Colors.white,
              fontSize: 45,
            ),
          ),
          Image.asset(item.image),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              children: [
                Text(
                  item.enText,
                  style: const TextStyle(
                    fontFamily: 'Caveat',
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    onPressed: () {
                        AudioCache numberSound = AudioCache(prefix:soundPath);
                        numberSound.play(item.sound);
                    },
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Color(0xff40344f),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
