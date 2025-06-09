import 'package:flutter/material.dart';
import 'package:tuko_app/components/models/number.dart';
import 'package:tuko_app/components/numbers_data.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Number> numbers = const [
    Number(
      image: 'assets/images/numbers/number_one.png',
      englishText: 'one',
      translationText: 'ichi',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_two.png',
      englishText: 'two',
      translationText: 'ni',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_three.png',
      englishText: 'three',
      translationText: 'san',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_four.png',
      englishText: 'four',
      translationText: 'shi',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_five.png',
      englishText: 'five',
      translationText: 'go',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_six.png',
      englishText: 'six',
      translationText: 'roku',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_seven.png',
      englishText: 'seven',
      translationText: 'sebun',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_eight.png',
      englishText: 'eight',
      translationText: 'hachi',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_nine.png',
      englishText: 'nine',
      translationText: 'Kyū',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_ten.png',
      englishText: 'ten',
      translationText: 'Jū',
      sound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Numbers', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, num) {
          return Items(number: numbers[num]);
        },
      ),

      //getList(numbers)),
    );
  }

  //another way to get the list of items in the screen
  //   List<Widget> getList(List<Number> numbers) {
  //     List<Items> items = [];
  //     for (int i = 0; i < numbers.length; i++) {
  //       items.add(Items(number: numbers[i]));
  //     }
  //     return items;
  //   }
}
