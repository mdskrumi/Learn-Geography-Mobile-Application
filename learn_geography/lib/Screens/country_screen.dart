import 'package:flutter/material.dart';

class CountryScreen extends StatelessWidget {

  static const rountName = "/country-screen";


  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

      final title = routeArgs["title"];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text("Yo See No country"),
      ),
    );
  }
}
