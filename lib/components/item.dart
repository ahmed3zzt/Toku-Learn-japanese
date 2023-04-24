import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/item.dart';

// ignore: must_be_immutable
class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.item, required this.color});
  final Item item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                color: Colors.orange[100],
                child: Image.asset(
                  item.image!,
                  width: 100,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.jpName,
                    style: const TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    item.enName,
                    style: const TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              final assetsAudioPlayer = AssetsAudioPlayer();

              assetsAudioPlayer.open(
                Audio(item.sound),
              );
            },
            icon: const Icon(
              Icons.play_arrow,
              size: 30,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.item, required this.color});
  final Item item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 5.0,
              top: 10.0,
              bottom: 10.0,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.jpName,
                      style: const TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      item.enName,
                      style: const TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              final assetsAudioPlayer = AssetsAudioPlayer();

              assetsAudioPlayer.open(
                Audio(item.sound),
              );
            },
            icon: const Icon(
              Icons.play_arrow,
              size: 30,
              color: Colors.white,
            ),
            style: IconButton.styleFrom(alignment: Alignment.centerLeft),
          )
        ],
      ),
    );
  }
}
