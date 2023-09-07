import "package:flutter/material.dart";
import "package:flutter_app/screens/Dashboard.dart";
import "package:flutter_app/screens/Home.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        title: "My Flutter App",
        home: Dashboard()
        // home: Home());
        );
  }
}
