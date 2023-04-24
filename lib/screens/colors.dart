import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Item> colors = const [
    Item(
      sound: "assets/sounds/colors/black.wav",
      image: 'assets/images/colors/color_black.png',
      jpName: 'Burakku',
      enName: 'black',
    ),
    Item(
      sound: "assets/sounds/colors/brown.wav",
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'brown',
    ),
    Item(
      sound: "assets/sounds/colors/dusty yellow.wav",
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Hokori ppoi kiiro',
      enName: 'dustly yellow',
    ),
    Item(
      sound: "assets/sounds/colors/gray.wav",
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gure',
      enName: 'gray',
    ),
    Item(
      sound: "assets/sounds/colors/green.wav",
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'green',
    ),
    Item(
      sound: "assets/sounds/colors/red.wav",
      image: 'assets/images/colors/color_red.png',
      jpName: 'Ake',
      enName: 'red',
    ),
    Item(
      sound: "assets/sounds/colors/white.wav",
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiroi',
      enName: 'white',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Colors"),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ListItem(
            item: colors[index],
            color: Colors.indigo,
          );
        },
      ),
    );
  }
}
