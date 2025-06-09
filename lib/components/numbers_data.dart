import 'package:flutter/material.dart';
import 'package:tuko_app/components/models/number.dart';

// Define your widget here
class Items extends StatelessWidget {
  final Number number;

  const Items({super.key, required this.number});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xffD57F1A),
      child: Row(
        children: [
          Container(color: Color(0xffFFF6DC), child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.translationText,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  number.englishText,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
            splashColor: Color(0xff46322B),
            onPressed: () {
              number.playSound();
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
