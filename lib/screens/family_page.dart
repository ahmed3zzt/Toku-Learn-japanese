import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/item.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});
  final List<Item> families = const [
    Item(
      sound: "assets/sounds/family_members/father.wav",
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chihioya',
      enName: 'father',
    ),
    Item(
      sound: "assets/sounds/family_members/grand father.wav",
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojisan',
      enName: 'grand father',
    ),
    Item(
      sound: "assets/sounds/family_members/mother.wav",
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      enName: 'mother',
    ),
    Item(
      sound: "assets/sounds/family_members/grand mother.wav",
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'grand mother',
    ),
    Item(
      sound: "assets/sounds/family_members/older bother.wav",
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Nisan',
      enName: 'older brother',
    ),
    Item(
      sound: "assets/sounds/family_members/older sister.wav",
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'older sister',
    ),
    Item(
      sound: "assets/sounds/family_members/son.wav",
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'son',
    ),
    Item(
      sound: "assets/sounds/family_members/daughter.wav",
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'dauhter',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Family Members"),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: families.length,
        itemBuilder: (context, index) {
          return ListItem(
            item: families[index],
            color: Colors.cyan,
          );
        },
      ),
    );
  }
}
