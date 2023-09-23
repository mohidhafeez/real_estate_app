import 'package:flutter/material.dart';

class RowTile extends StatelessWidget {
  final String image;
  const RowTile({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(image: AssetImage(image)),
      ),
    );
  }
}
