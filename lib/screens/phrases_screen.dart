import 'package:flutter/material.dart';
import 'package:toku/components/phrases_item.dart';

import '../models/model_phreases.dart';
class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({Key? key}) : super(key: key);
  final List<ModelPhreases> phreasesData = const [
    ModelPhreases(sound: 'are_you_coming.wav', jpText: 'Kimasu ka', enText: 'Are you coming'),
    ModelPhreases(sound: 'dont_forget_to_subscribe.wav', jpText: 'kōdoku suru koto o wasurenaide kudasai', enText: 'don\'t forget to subscribe'),
    ModelPhreases(sound: 'how_are_you_feeling.wav', jpText: 'go kibun wa ikagadesu ka', enText: 'How are you felling'),
    ModelPhreases(sound: 'i_love_anime.wav', jpText: 'watashi wa anime ga daisukidesu', enText: 'I love anime'),
    ModelPhreases(sound: 'i_love_programming.wav', jpText: 'watashi wa puroguramingu ga daisukidesu', enText: 'I love Programming'),
    ModelPhreases(sound: 'programming_is_easy.wav', jpText: 'puroguramingu wa kantandesu', enText: 'Programming is easy'),
    ModelPhreases(sound: 'what_is_your_name.wav', jpText: 'namae wa nandesu ka', enText: 'what\'s your name'),
    ModelPhreases(sound: 'where_are_you_going.wav', jpText: 'doko ni iku no', enText: 'where are you going'),
    ModelPhreases(sound: 'yes_im_coming.wav', jpText: 'hai, ikimasu', enText: 'yes i am coming'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff40344f),
      appBar: AppBar(
          backgroundColor: const Color(0xff40344f),
          centerTitle: true,
          title: const Text(
            'Phrases',
            style: TextStyle(fontSize: 22),
          ),
          elevation: 0,
        ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount:phreasesData.length ,
            itemBuilder: (ctx,index){
              return PhrasesItem(phraseData:phreasesData[index],phrasePath: 'assets/sounds/phrases/');
            }
        ),
      ),
    );
  }
}
