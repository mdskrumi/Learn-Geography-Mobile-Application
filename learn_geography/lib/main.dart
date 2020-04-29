import 'package:flutter/material.dart';
import 'package:learn_geography/screens/geography_screen.dart';

import './screens/country_screen.dart';
import './screens/continents_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn Geography',
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
                  fontWeight: FontWeight.bold),
              subtitle: TextStyle(
                  fontFamily: 'RobotoCondensed-Light',
                  fontSize: 24,
                  ),
            ),
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
