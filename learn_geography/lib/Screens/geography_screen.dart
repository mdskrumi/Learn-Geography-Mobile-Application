import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:async';

import '../models/country.dart';

class GeographyScreen extends StatelessWidget {
  static const rountName = "/geography-screen";

  Future<String> readFileAsync(String filePath) async {
    String str = await rootBundle.loadString(filePath);
    return str;
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, Country>;
    final country = routeArgs["country"];

    final appbarTitle = country.name.replaceAll("_", " ");
    return Scaffold(
      appBar: AppBar(
        title: Text(appbarTitle),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
          child: SizedBox(
            child: FutureBuilder(
              future: readFileAsync(country.geography),
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                return (snapshot.hasData)
                    ? Text(
                        snapshot.data,
                        style: Theme.of(context).textTheme.title,
                      )
                    : Text(
                        "Nothing Found",
                        style: Theme.of(context).textTheme.title,
                      );
              },
            ),
          ),
        ),
      ),
    );
  }
}
