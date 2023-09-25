import 'package:flutter/material.dart';

class ShoopingAppMainPage extends StatelessWidget {
  const ShoopingAppMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Shopping \nApp',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Placeholder(
                color: Colors.green,
                fallbackHeight: 344,
              ),
              Placeholder(
                color: Colors.green,
                fallbackHeight: 344,
              ),
              Placeholder(
                color: Colors.green,
                fallbackHeight: 344,
              )
            ],
          ),
        ),
      ),
    );
  }
}
