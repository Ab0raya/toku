import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/model_phreases.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({Key? key, required this.phraseData, required this.phrasePath,}) : super(key: key);
  final ModelPhreases phraseData;
  final String phrasePath;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(2),
        width: double.infinity,
        height: 265,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white.withOpacity(0.3),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              phraseData.jpText,
              style: const TextStyle(
                fontFamily: 'Caveat',
                color: Colors.white,
                fontSize: 45,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              '(${phraseData.enText})',
              style: const TextStyle(
                fontFamily: 'Caveat',
                color: Colors.white,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 15,left: 10,),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () {
                    AudioCache numberSound = AudioCache(prefix:phrasePath);
                    numberSound.play(phraseData.sound);
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Color(0xff40344f),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
