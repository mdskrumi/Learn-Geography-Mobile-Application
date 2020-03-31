import 'package:flutter/material.dart';

class ContinentListLayout extends StatelessWidget {
  final String name;
  final Color color;

  ContinentListLayout(this.name, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Text(name),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color.withOpacity(0.7), color],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
