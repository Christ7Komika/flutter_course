import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final IconData? icon;
  final String title;

  const ListTileWidget(
      {required this.title, this.icon = Icons.label, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {},
    );
  }
}
