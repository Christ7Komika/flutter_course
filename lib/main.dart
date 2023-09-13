import "package:flutter/material.dart";
// import "package:flutter_app/screens/Dashboard.dart";
// import "package:flutter_app/screens/Home.dart";
// import "package:flutter_app/screens/Statefull.dart";
import "package:flutter_app/screens/form.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      title: "My Flutter App",
      home: MyForm(),
    );
  }
}
