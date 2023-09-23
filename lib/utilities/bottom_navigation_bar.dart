import 'package:flutter/material.dart';
import 'package:real_estate/utilities/main_button.dart';

class CustomNavigtorBar extends StatelessWidget {
  final String price;
  const CustomNavigtorBar({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.only(right: 8, left: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "price",
                  style: TextStyle(color: Colors.black54),
                ),
                Text(price, style: TextStyle(color: Colors.black, fontSize: 17))
              ],
            ),
            MainButton(text: "Rent Now")
          ],
        ),
      ),
    );
  }
}
