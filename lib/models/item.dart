import 'package:flutter/cupertino.dart';

class Item {
  final String? image;
  final String enName;
  final String jpName;
  final String sound;

  const Item({
    @required this.image,
    required this.jpName,
    required this.enName,
    required this.sound,
  });
}
