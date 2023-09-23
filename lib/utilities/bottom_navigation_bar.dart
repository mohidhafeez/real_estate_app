import 'package:flutter/material.dart';
import 'package:real_estate/utilities/main_button.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Price',
                style: TextStyle(color: Colors.black54),
              ),
              Text(
                'Rp.1.500.000.000 /Years',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
          MainButton(text: 'Rent Now')
        ],
      ),
    );
  }
}
