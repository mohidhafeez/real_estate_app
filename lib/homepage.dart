import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Jakarta"),
                  Image.asset('assets/IC_Notification.png')
                ],
              ),
              SizedBox(
                height: 23,
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
                height: 23,
              ),
              //category list
              Placeholder(
                fallbackHeight: 40,
              ),
              SizedBox(
                height: 23,
              ),
              //near from you
              Placeholder(
                fallbackHeight: 300,
              ),
              SizedBox(
                height: 23,
              ),
              //best for you
              Placeholder(
                fallbackHeight: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}
