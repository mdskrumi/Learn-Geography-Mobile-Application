import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_geography/widgets/country_list_layout.dart';
import '../models/country.dart';
import '../const_data.dart';

import 'dart:async';
import 'dart:io';

class CountryScreen extends StatelessWidget {
  static const rountName = "/country-screen";

  Future<String> readFileAsync(String filePath) async {
    String str = await rootBundle.loadString(filePath);
    return str;
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final id = routeArgs["id"];
    final title = routeArgs["title"];
    final String image = routeArgs["image"];
    Color color = Colors.blue;

    List<Country> countries = getContries.where((c) {
      return (c.continentId == id);
    }).toList();

    //String appBarTitle = title.replaceAll(new RegExp(r'_'), " ");

    final appBar = AppBar(
      title: Text(title),
    );
    final appBarHeight = appBar.preferredSize.height + mediaQuery.padding.top;

    return Scaffold(
        appBar: appBar,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: (mediaQuery.size.height - appBarHeight) * 0.3,
                width: double.infinity,
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
              Divider(
                height: (mediaQuery.size.height - appBarHeight) * 0.02,
              ),
              Container(
                height: (mediaQuery.size.height - appBarHeight) * 0.68,
                width: double.infinity,
                child: GridView(
                  children: countries
                      .map((c) => CountryListLayout(country: c))
                      .toList(),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: mediaQuery.size.width / 1.8,
                    childAspectRatio: 3 / 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
