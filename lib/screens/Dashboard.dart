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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text.rich(
              TextSpan(
                text: "My",
                children: [
                  TextSpan(
                    text: "Flutter",
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "App",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.numbers,
                  size: 15,
                  color: Colors.blue,
                ),
                Text(
                  "Random value is: ${getNumber()}",
                ),
                IconButton(
                  splashRadius: 20.0,
                  padding: const EdgeInsets.all(0),
                  onPressed: () {
                    print("Random value is: ${getNumber()}");
                  },
                  icon: const Icon(Icons.restart_alt, color: Colors.lightGreen),
                )
              ],
            ),
            const Image(
              image: AssetImage("images/im2.jpg"),
            ),
            Image.network(
              "https://images.unsplash.com/photo-1692486407074-e35680656077?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
              width: 400.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}

int getNumber() => Random().nextInt(100);
