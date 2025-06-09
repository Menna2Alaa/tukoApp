import 'package:flutter/material.dart';
import 'package:tuko_app/components/models/japanese_color.dart';

// Define your widget here or remove the incomplete line
class ColorData extends StatelessWidget {
  const ColorData({super.key, required this.jpcolors});
  final JapaneseColor jpcolors;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xff347B2D),
      child: Row(
        children: [
          Container(
            color: Color(0xffFFF6DC),
            child: Image.asset(jpcolors.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  jpcolors.translationColor,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  jpcolors.englishColor,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
            splashColor: Color(0xff46322B),
            onPressed: () {
              jpcolors.playSound();
            },
            icon: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.play_arrow, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
