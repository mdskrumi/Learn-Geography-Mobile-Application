import 'package:flutter/material.dart';
import '../screens/country_screen.dart';

class ContinentListLayout extends StatelessWidget {
  final String id;
  final String name;
  final Color color;
  final String image;

  void selectedContinent(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CountryScreen.rountName,
      arguments: {"id": id, "title": name , "image" : image},
    );
  }

  ContinentListLayout(this.id, this.name, this.color, this.image);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectedContinent(context);
      },
      borderRadius: BorderRadius.circular(15),
      splashColor: color,
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          name,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color,
              color.withOpacity(0.4),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
