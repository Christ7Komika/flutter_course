import "package:flutter/material.dart";

void main() => runApp(const Statefull());

class Statefull extends StatelessWidget {
  const Statefull({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Stateful Widgets Flutter  - 3.1"),
          centerTitle: true,
        ),
        body: const StatefulClass(),
      ),
    );
  }
}

class StatefulClass extends StatefulWidget {
  const StatefulClass({super.key});

  @override
  State<StatefulClass> createState() => _StatefulClassState();
}

class _StatefulClassState extends State<StatefulClass> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: const Text("Nike Shoes"),
          trailing: IconButton(
            icon: Icon(liked ? Icons.favorite : Icons.favorite_outline),
            onPressed: () {
              setState(() => liked = !liked);
            },
          ),
        )
      ],
    );
  }
}
