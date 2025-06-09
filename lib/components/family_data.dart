import 'package:flutter/material.dart';
import 'package:tuko_app/components/models/family.dart';

class FamilyData extends StatelessWidget {
  const FamilyData({super.key, required this.family});
  final Family family;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Color(0xff347B2D),
      child: Row(
        children: [
          Container(color: Color(0xffFFF6DC), child: Image.asset(family.image)),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  family.translationName,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  family.englishName,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          IconButton(
            splashColor: Color(0xff46322B),
            onPressed: () {
              family.playSound();
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
