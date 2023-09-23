import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  final String image;
  final Widget screen;
  const CardTile({super.key, required this.image, required this.screen});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => screen));
      },
      child: Stack(
        children: [
          SizedBox(
            height: 250,
            width: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 35,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              child: Image.asset(
                'assets/Overlay.png',
                height: 250,
                width: 200,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
