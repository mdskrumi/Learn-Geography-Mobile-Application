import 'package:flutter/material.dart';
import '../Widgets/continentListLayout.dart';
import '../const_data.dart';

class ContinentSreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Continents"),
      ),
      body: GridView(
        children: getContinents.map((c) {
          return ContinentListLayout(c.name, c.color);
        }).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: mediaQuery.size.width / 1.7,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
      ),
    );
  }
}
