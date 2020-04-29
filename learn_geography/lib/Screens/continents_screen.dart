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
      body: GridView.builder(
        itemCount: getContinents.length,
        itemBuilder: (ctx, i) => ContinentListLayout(
          getContinents[i].id,
          getContinents[i].name,
          getContinents[i].color,
          getContinents[i].image,
        ),
        padding: const EdgeInsets.all(20),
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
