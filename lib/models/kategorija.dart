import 'package:flutter/material.dart';

class Kategorija {
  @required
  final String? id;
  @required
  final String? naslov;
  @required
  final Color? boja;
  const Kategorija({this.id, this.naslov, this.boja = Colors.purple});
}
