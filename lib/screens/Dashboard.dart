import "dart:math";

import "package:flutter/material.dart";

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboard".toUpperCase(),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(50.0),
        alignment: Alignment.center,
        width: 350.0,
        height: 250.0,
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(100.0),
          border: Border.all(color: Colors.grey, width: 6.0),
          color: Colors.blueGrey,
          shape: BoxShape.circle,
          image: const DecorationImage(
              image: AssetImage(
                "images/im2.jpg",
              ),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
