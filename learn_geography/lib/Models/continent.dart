import 'package:flutter/material.dart';

class Continent {
  final String id;
  final String name;
  final Color color;
  final String image;
  const Continent({ @required this.id, @required this.name, this.color = Colors.green , @required this.image});
}
