import 'package:flutter/material.dart';

class Continent {
  final String id;
  final String name;
  final Color color;

  const Continent({ @required this.id, @required this.name, this.color = Colors.green});
}
