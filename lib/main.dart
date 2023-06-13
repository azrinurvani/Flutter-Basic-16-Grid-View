import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Container> myList = List.generate(90, (index) {
    return Container(
      color: Color.fromARGB(
        255,
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
      ),
    );
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Grid View"),
        ),
        // body: GridView(
        //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 3,
        //     crossAxisSpacing: 20,
        //     mainAxisSpacing: 10,
        //     childAspectRatio: 3 / 4,
        //   ),
        //   children: myList,
        //   padding: EdgeInsets.all(10),
        // ),

        body: GridView.count(
          crossAxisCount: 3,
          children: myList,
          crossAxisSpacing: 10,
          mainAxisSpacing: 25,
          childAspectRatio: 3 / 4,
          padding: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
