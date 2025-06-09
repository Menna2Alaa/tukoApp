import 'package:flutter/material.dart';
import 'package:tuko_app/components/models/phrases.dart';

class PhrasesData extends StatelessWidget {
  final Phrases phrases;

  const PhrasesData({super.key, required this.phrases});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xff0582D2),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  phrases.jpPhase,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  phrases.englishPhase,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
            splashColor: Color(0xff0582D2),
            onPressed: () {
              phrases.playSound();
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
