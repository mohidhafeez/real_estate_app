import 'package:flutter/material.dart';

class DetailedTile extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final int bedroom;
  final int bathroom;
  const DetailedTile(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      required this.bedroom,
      required this.bathroom});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(image),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                "Rp.$price /Year".toString(),
                style: TextStyle(color: Colors.blue),
              ),
              Row(
                children: [
                  Image.asset('assets/IC_Bed.png'),
                  Text("$bedroom Bedroom"),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset('assets/IC_Bath.png'),
                  Text("$bathroom Bathroom"),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
