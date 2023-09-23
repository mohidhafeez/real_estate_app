import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:real_estate/utilities/bottom_navigation_bar.dart';
import 'package:real_estate/utilities/row_tile.dart';

class Screen extends StatelessWidget {
  final String image;
  final int price;
  const Screen({super.key, required this.image, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 100,
        child: CustomNavigtorBar(price: "Rp.1.500.000.000/ Year"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0, right: 16, left: 16),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: SizedBox(
                height: 290,
                width: 390,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 310.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Desciption",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                      "the Level 3 house that has the modern design has a large pool and a garage that fit the four cars.",
                      style: TextStyle(color: Colors.black54)),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                                'assets/jurica-koletic-7YVZYZeITc8-unsplash_adobespark 1.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Garry Allan',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text('Owner',
                                  style: TextStyle(color: Colors.black54)),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.blue[300],
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Image(
                                  image: AssetImage('assets/Frame.png'))),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.blue[300],
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Image(
                                  image: AssetImage('assets/Frame-1.png'))),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Gallery",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RowTile(
                          image: 'assets/cat-han-aPD1yNUYP0w-unsplash 1.png'),
                      RowTile(
                          image:
                              'assets/jorge-de-jorge-NvqYkDPE0Rw-unsplash 1.png'),
                      RowTile(
                          image:
                              'assets/sidekix-media-EoTUCbv9Jrs-unsplash 1.png'),
                      RowTile(
                          image: 'assets/cat-han-aPD1yNUYP0w-unsplash 1.png'),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 80,
                    width: 500,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/map.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
