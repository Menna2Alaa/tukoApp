import 'package:flutter/material.dart';
import 'package:tuko_app/screens/color_page.dart';
import 'package:tuko_app/screens/family_page.dart';
import 'package:tuko_app/screens/numbers_page.dart';
import 'package:tuko_app/screens/phrasea_page.dart';
import '../components/category_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFEF6DB),
        appBar: AppBar(
          backgroundColor: Color(0xff46322B),
          title: Text('Tuko', style: TextStyle(color: Colors.white)),
        ),
        body: Column(
          children: [
            Category(
              text: "Numbers",
              color: Color(0xffD57F1A),
              onTap: () {
                ///context is the screen we will put another one on it
                ///MaterialPageRoute responsible for building the new screen, it takes a builder attributes responible for returning the new screen
                ///builder takes a callback which has a context
                Navigator.push(
                  //navigator is a class responsible for alloeing us move between screens
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return NumbersPage();
                    },
                  ),
                );
              },
            ),
            Category(
              text: "Family Members",
              color: Color(0xff347B2D),
              onTap: () {
                Navigator.push(
                  //navigator is a class responsible for alloeing us move between screens
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return FamilyPage();
                    },
                  ),
                );
              },
            ),

            Category(
              text: "Colors",
              color: Color(0xff6800A2),
              onTap: () {
                Navigator.push(
                  //navigator is a class responsible for alloeing us move between screens
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return ColorPage();
                    },
                  ),
                );
              },
            ),
            Category(
              text: "Phrases",
              color: Color(0xff0582D2),
              onTap: () {
                Navigator.push(
                  //navigator is a class responsible for alloeing us move between screens
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return PhrasesPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
