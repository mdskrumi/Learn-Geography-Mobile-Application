import 'package:flutter/material.dart';
import 'package:learn_geography/screens/geography_screen.dart';

import './screens/country_screen.dart';
import './screens/continents_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.lightBlue,
        canvasColor: Colors.white,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            title: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 24,
                fontWeight: FontWeight.bold)),
      ),
      initialRoute: "/",
      routes: {
        "/": (ctx) => ContinentSreen(),
        CountryScreen.rountName: (ctx) => CountryScreen(),
        GeographyScreen.rountName: (ctx) => GeographyScreen(),
      },
    );
  }
}
