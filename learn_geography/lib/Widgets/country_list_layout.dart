import 'package:flutter/material.dart';
import '../screens/geography_screen.dart';
import '../models/country.dart';

class CountryListLayout extends StatelessWidget {
  final Country country;

  CountryListLayout({this.country});
  void selectedCountry(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      GeographyScreen.rountName,
      arguments: {"country" : country},
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectedCountry(context);
      },
      borderRadius: BorderRadius.circular(15),
      splashColor: Colors.pink,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(5),
        child: LayoutBuilder(
          builder: (ctx, constraints) {
            return Column(
              children: <Widget>[
                Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.8,
                  child: Image.asset(
                    country.image,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.2,
                  child: FittedBox(
                    child: Text(
                      country.name.replaceAll("_", " "),
                      style: Theme.of(context).textTheme.title,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
