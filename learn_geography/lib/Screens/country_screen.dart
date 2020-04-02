import 'package:flutter/material.dart';
import '../models/country.dart';
import '../const_data.dart';

import 'dart:async';
import 'dart:io';

class CountryScreen extends StatelessWidget {
  static const rountName = "/country-screen";

  String getData(String path) {
    String data;
    new File(path).readAsString().then((String contents) {
      data = contents;
    });
    return data;
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final id = routeArgs["id"];
    final title = routeArgs["title"];
    final String image = routeArgs["image"];
    Color color = Colors.blue;

    List<Country> countries = getContries.where((c) {
      return (c.continentId == id);
    }).toList();

    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
                children: countries.map((c) {
              return Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(5),
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
                width: double.infinity,
                child: Text(
                  c.name,
                  style: Theme.of(context).textTheme.title,
                ),
              );
            }).toList()),
          ),
        ));
  }
}
