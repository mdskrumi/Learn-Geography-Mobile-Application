import 'package:flutter/material.dart';

class Country {
  final String continentId;
  final String name;
  final String image;
  final String geography;
  final String linktoMaps;
  final String areaImage;

  const Country({
    @required this.continentId,
    @required this.name,
    @required this.image,
    @required this.geography,
    @required this.linktoMaps,
    @required this.areaImage,
  });
}
