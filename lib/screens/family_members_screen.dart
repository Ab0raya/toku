import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/items.dart';
class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({Key? key}) : super(key: key);
  final List<ModelItem> familyMembersData = const [
    ModelItem(
      jpText: 'Musume',
      enText: 'daughter',
      image: 'assets/images/family_members/family_daughter.png',
      sound: 'daughter.wav',
    ),
    ModelItem(
      jpText: 'chichioya',
      enText: 'father',
      image: 'assets/images/family_members/family_father.png',
      sound: 'father.wav',
    ),
    ModelItem(
      jpText: 'ojīsan',
      enText: 'grandfather',
      image: 'assets/images/family_members/family_grandfather.png',
      sound: 'grand father.wav',
    ),
    ModelItem(
      jpText: 'obāchan',
      enText: 'grandmother',
      image: 'assets/images/family_members/family_grandmother.png',
      sound: 'grand mother.wav',
    ),
    ModelItem(
      jpText: 'hahaoya',
      enText: 'mother',
      image: 'assets/images/family_members/family_mother.png',
      sound: 'mother.wav',
    ),
    ModelItem(
      jpText: 'ani',
      enText: 'older brother',
      image: 'assets/images/family_members/family_older_brother.png',
      sound: 'older bother.wav',
    ),
    ModelItem(
      jpText: 'ane',
      enText: 'older sister',
      image: 'assets/images/family_members/family_older_sister.png',
      sound: 'older sister.wav',
    ),
    ModelItem(
      jpText: 'musuko',
      enText: 'son',
      image: 'assets/images/family_members/family_son.png',
      sound: 'son.wav',
    ),
    ModelItem(
      jpText: 'otōto',
      enText: 'younger brother',
      image: 'assets/images/family_members/family_younger_brother.png',
      sound: 'younger brohter.wav',
    ),
    ModelItem(
      jpText: 'imōto',
      enText: 'younger sister',
      image: 'assets/images/family_members/family_younger_sister.png',
      sound: 'younger sister.wav',
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
          'Family members',
          style: TextStyle(fontSize: 22),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: familyMembersData.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (ctx, index) {
              return Item(item: familyMembersData[index],soundPath: 'assets/sounds/family_members/',);
            }),
      ),
    );
  }
}
