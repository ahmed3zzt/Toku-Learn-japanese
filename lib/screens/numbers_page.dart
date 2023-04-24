import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Item> numbers = const [
    Item(
      sound: "assets/sounds/numbers/number_one_sound.mp3",
      image: 'assets/images/numbers/number_one.png',
      jpName: 'ichi',
      enName: "one",
    ),
    Item(
      sound: "assets/sounds/numbers/number_two_sound.mp3",
      image: 'assets/images/numbers/number_two.png',
      jpName: 'ni',
      enName: "two",
    ),
    Item(
      sound: "assets/sounds/numbers/number_three_sound.mp3",
      image: 'assets/images/numbers/number_three.png',
      jpName: 'san',
      enName: "three",
    ),
    Item(
      sound: "assets/sounds/numbers/number_four_sound.mp3",
      image: 'assets/images/numbers/number_four.png',
      jpName: 'Shi',
      enName: "four",
    ),
    Item(
      sound: "assets/sounds/numbers/number_five_sound.mp3",
      image: 'assets/images/numbers/number_five.png',
      jpName: 'Go',
      enName: "five",
    ),
    Item(
      sound: "assets/sounds/numbers/number_six_sound.mp3",
      image: 'assets/images/numbers/number_six.png',
      jpName: 'Roku',
      enName: "six",
    ),
    Item(
      sound: "assets/sounds/numbers/number_seven_sound.mp3",
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'Sebun',
      enName: "seven",
    ),
    Item(
      sound: "assets/sounds/numbers/number_eight_sound.mp3",
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'hachi',
      enName: "eight",
    ),
    Item(
      sound: "assets/sounds/numbers/number_nine_sound.mp3",
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'Kyu',
      enName: "nine",
    ),
    Item(
      sound: "assets/sounds/numbers/number_ten_sound.mp3",
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'Ju',
      enName: "ten",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numbers"),
        backgroundColor: Colors.brown,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListItem(
            item: numbers[index],
            color: Colors.orange,
          );
        },
      ),
    );
  }
}
