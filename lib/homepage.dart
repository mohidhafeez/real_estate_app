import 'package:flutter/material.dart';
import 'package:real_estate/utilities/detailed_tile.dart';
import 'package:real_estate/utilities/main_button.dart';
import 'package:real_estate/utilities/tile.dart';

class HomePageView extends StatelessWidget {
  final List<String> names = ["House", "Apartment", "Vila", "Hotel"];
  HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 60),
                        child: Text(
                          "Location",
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            "Jakarta",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Image.asset(
                            'assets/IC_Arrow down.png',
                            scale: 0.7,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Image.asset('assets/IC_Notification.png')
                ],
              ),
              const SizedBox(
                height: 21,
              ),
              //search

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 290,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          size: 30,
                        ),
                        hintText: "Search address , or near you",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/IC_Filter.png',
                    scale: 0.8,
                  ),
                ],
              ),
              const SizedBox(
                height: 21,
              ),
              SizedBox(
                height: 40,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: MainButton(text: names[index]),
                      );
                    }),
              ),

              const SizedBox(
                height: 21,
              ),
              //near from you

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Near from you",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text("See more",
                      style: TextStyle(color: Color.fromARGB(255, 81, 81, 81))),
                ],
              ),
              const SizedBox(
                height: 21,
              ),

              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CardTile(image: "assets/house1.png"),
                    SizedBox(
                      width: 12,
                    ),
                    CardTile(image: "assets/house2.png"),
                    SizedBox(
                      width: 12,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best for you",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "See more",
                    style: TextStyle(color: Color.fromARGB(255, 81, 81, 81)),
                  ),
                ],
              ),
              const Column(
                children: [
                  DetailedTile(
                      image: "assets/pexels-expect-best-323780 1.png",
                      name: "Orchad House",
                      price: 25000000,
                      bedroom: 6,
                      bathroom: 4),
                  DetailedTile(
                      image:
                          "assets/ksenia-balandina-RCF5KSWb7Ms-unsplash 1.png",
                      name: "The Hollies House",
                      price: 15000000,
                      bedroom: 5,
                      bathroom: 4),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
