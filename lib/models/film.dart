import 'package:flutter/material.dart';

enum Tezina { Lak, Osrednji, Tezak }

class Film {
  @required
  final String? id;
  @required
  final List<String>? kategorije;
  @required
  final String? naslov;
  @required
  final int? trajanje;
  @required
  final String? redatelj;
  @required
  final int? godina;
  @required
  final List<String>? uloge;
  @required
  final Tezina? tezina;
  @required
  final bool? jeHollyWood;
  @required
  final bool? jeEuropski;
  @required
  final String? slikaUrl;
  @required
  final String? opis;
  const Film(
      {this.id,
      this.kategorije,
      this.naslov,
      this.trajanje,
      this.redatelj,
      this.godina,
      this.uloge,
      this.tezina,
      this.jeHollyWood,
      this.jeEuropski,
      this.slikaUrl,
      this.opis});
}
