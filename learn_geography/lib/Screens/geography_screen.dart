import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:async';

import '../models/country.dart';

class GeographyScreen extends StatefulWidget {
  static const rountName = "/geography-screen";
  @override
  _GeographyScreenState createState() => _GeographyScreenState();
}

class _GeographyScreenState extends State<GeographyScreen> {
  Future<String> readFileAsync(String filePath) async {
    String str = await rootBundle.loadString(filePath);
    return str;
  }

  double textSize = 18;
  bool showSetting = false;

  void setTextSize(val) {
    setState(() {
      textSize = val;
    });
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
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              setState(() {
                showSetting = !showSetting;
                print(showSetting);
              });
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
          child: Column(
            children: <Widget>[
              showSetting
                  ? Slider(
                      value: textSize,
                      onChanged: setTextSize,
                      min: 18,
                      max: 28,
                      divisions: 10,
                    )
                  : Container(),
              SizedBox(
                child: FutureBuilder(
                  future: readFileAsync(country.geography),
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    return (snapshot.hasData)
                        ? Text(
                            snapshot.data,
                            style: TextStyle(
                              fontFamily:
                                  Theme.of(context).textTheme.title.fontFamily,
                              fontSize: textSize,
                            ),
                          )
                        : Text(
                            "Nothing Found",
                            style: Theme.of(context).textTheme.title,
                          );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
