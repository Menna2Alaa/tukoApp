import 'package:flutter/material.dart';

import 'screens/home_page.dart';

void main() {
  runApp(Tuko());
}

class Tuko extends StatelessWidget {
  const Tuko({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
