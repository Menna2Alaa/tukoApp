import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({super.key, this.text, this.color, this.onTap});
  String? text;
  Color? color;

  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        color: color,
        height: 60,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            text!,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
