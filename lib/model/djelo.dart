import 'package:flutter/foundation.dart';

class Djelo {
  final String id;
  final String autor;
  final String naslov;
  final double vrijemeCitanja;
  final DateTime danCitanja;

  Djelo(
      {required this.id,
      required this.autor,
      required this.naslov,
      required this.vrijemeCitanja,
      required this.danCitanja});
}
