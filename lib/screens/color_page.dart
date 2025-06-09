import 'package:flutter/material.dart';
import 'package:tuko_app/components/color_data.dart';
import 'package:tuko_app/components/models/japanese_color.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});
  final List<JapaneseColor> jpcolor = const [
    JapaneseColor(
      image: 'assets/images/colors/color_black.png',
      englishColor: 'black',
      translationColor: 'kuro',
      sound: 'sounds/colors/black.wav',
    ),

    JapaneseColor(
      image: 'assets/images/colors/color_brown.png',
      englishColor: 'brown',
      translationColor: 'chario',
      sound: 'sounds/colors/brown.wav',
    ),

    JapaneseColor(
      image: 'assets/images/colors/color_dusty_yellow.png',
      englishColor: 'dusty yellow',
      translationColor: 'Dasutiierō',
      sound: 'sounds/colors/dusty yellow.wav',
    ),

    JapaneseColor(
      image: 'assets/images/colors/color_green.png',
      englishColor: 'green',
      translationColor: 'midori',
      sound: 'sounds/colors/green.wav',
    ),

    JapaneseColor(
      image: 'assets/images/colors/color_red.png',
      englishColor: 'red',
      translationColor: 'aka',
      sound: 'sounds/colors/red.wav',
    ),

    JapaneseColor(
      image: 'assets/images/colors/color_white.png',
      englishColor: 'white',
      translationColor: 'shiro',
      sound: 'sounds/colors/white.wav',
    ),

    JapaneseColor(
      image: 'assets/images/colors/yellow.png',
      englishColor: 'yellow',
      translationColor: 'kiiro',
      sound: 'sounds/colors/yellow.wav',
    ),

    JapaneseColor(
      image: 'assets/images/colors/color_gray.png',
      englishColor: 'gray',
      translationColor: 'kuro',
      sound: 'sounds/colors/gray.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Color', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: jpcolor.length,
        itemBuilder: (context, num) {
          return ColorData(jpcolors: jpcolor[num]);
        },
      ),
    );
  }
}
