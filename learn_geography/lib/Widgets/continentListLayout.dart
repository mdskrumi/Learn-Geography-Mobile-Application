import 'package:flutter/material.dart';

class ContinentListLayout extends StatelessWidget {
  final String name;
  final Color color;

  ContinentListLayout(this.name, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Text(
        name,
        style: Theme.of(context).textTheme.title,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color , color.withOpacity(0.5),],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
