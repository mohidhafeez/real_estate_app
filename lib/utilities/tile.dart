import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  final String image;
  const CardTile({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 250,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(image, fit: BoxFit.cover)),
    );
  }
}
