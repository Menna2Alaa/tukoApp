import 'package:flutter/material.dart';
import 'package:tuko_app/components/family_data.dart';
import 'package:tuko_app/components/models/family.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  final List<Family> members = const [
    Family(
      image: 'assets/images/familyMembers/family_father.png',
      englishName: 'father',
      translationName: 'chichioya',
      sound: 'sounds/family_members/father.wav',
    ),

    Family(
      image: 'assets/images/familyMembers/family_mother.png',
      englishName: 'mother',
      translationName: 'hahaoya',
      sound: 'sounds/family_members/mother.wav',
    ),

    Family(
      image: 'assets/images/familyMembers/family_daughter.png',
      englishName: 'dauter',
      translationName: 'musume',
      sound: 'sounds/family_members/daughter.wav',
    ),

    Family(
      image: 'assets/images/familyMembers/family_son.png',
      englishName: 'son',
      translationName: 'musuko',
      sound: 'sounds/family_members/son.wav',
    ),

    Family(
      image: 'assets/images/familyMembers/family_older_sister.png',
      englishName: 'older sister',
      translationName: 'ane',
      sound: 'sounds/family_members/older sister.wav',
    ),

    Family(
      image: 'assets/images/familyMembers/family_older_brother.png',
      englishName: 'older brother',
      translationName: 'ani',
      sound: 'sounds/family_members/older bother.wav',
    ),

    Family(
      image: 'assets/images/familyMembers/family_younger_sister.png',
      englishName: 'younger sister',
      translationName: 'Imōto',
      sound: 'sounds/family_members/younger sister.wav',
    ),

    Family(
      image: 'assets/images/familyMembers/family_younger_brother.png',
      englishName: 'younger brother',
      translationName: 'otōto',
      sound: 'sounds/family_members/younger brohter.wav',
    ),

    Family(
      image: 'assets/images/familyMembers/family_grandfather.png',
      englishName: 'grandfather',
      translationName: 'sofu',
      sound: 'sounds/family_members/grand father.wav',
    ),

    Family(
      image: 'assets/images/familyMembers/family_grandmother.png',
      englishName: 'grandmother',
      translationName: 'sobo',
      sound: 'sounds/family_members/grand mother.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Family Mambers', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, num) {
          return FamilyData(family: members[num]);
        },
      ),
    );
  }
}
