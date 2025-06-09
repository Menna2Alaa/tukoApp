import 'package:flutter/material.dart';
import 'package:tuko_app/components/models/phrases.dart';
import 'package:tuko_app/components/phrases_data.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<Phrases> phrase = const [
    Phrases(
      jpPhase: 'anata wa rai masu ka ?',
      englishPhase: 'Are you coming?',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),

    Phrases(
      jpPhase: 'hai 、 watashi wa ikiba masu',
      englishPhase: 'Yes i am coming',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),

    Phrases(
      jpPhase: 'koudoku wa wasure nai de kudasai',
      englishPhase: 'Don’t forget to subscribe',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),

    Phrases(
      jpPhase: 'anata wa dou kanji te i masu ka ?',
      englishPhase: 'How are you feeling?',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),

    Phrases(
      jpPhase: 'watashi wa anime ga daisuki desu',
      englishPhase: 'I love anime',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),

    Phrases(
      jpPhase: 'programming ga daisuki desu',
      englishPhase: 'I love programming',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),

    Phrases(
      jpPhase: 'programming wa kantan desu',
      englishPhase: 'Programming i easy',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),

    Phrases(
      jpPhase: 'anata no namae wa nani desu ka ?',
      englishPhase: 'What i your name ?',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),

    Phrases(
      jpPhase: 'doko ni iku no desu ka ?',
      englishPhase: 'Where are you going ?',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Phrases', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: phrase.length,
        itemBuilder: (context, num) {
          return PhrasesData(phrases: phrase[num]);
        },
      ),
    );
  }
}
