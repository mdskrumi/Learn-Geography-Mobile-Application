import 'package:flutter/material.dart';
import '../widgets/continentListLayout.dart';
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
        padding: const EdgeInsets.all(20),
        children: getContinents.map((c) {
          return ContinentListLayout(c.id, c.name, c.color, c.image);
        }).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: mediaQuery.size.width / 1.6,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
      ),
    );
  }
}
