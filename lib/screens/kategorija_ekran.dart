import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/kategorija.dart';
import 'package:flutter_complete_guide/widgets/kategorija_stavka.dart';
import '../widgets/kategorija_stavka.dart';
import '../dummy.dart';
import 'filmovi_ekran.dart';
import '../models/film.dart';

class EkranKategorije extends StatelessWidget {
  EkranKategorije({super.key, this.dostupniFilmovi});
  final List<Film>? dostupniFilmovi;
  void _izaberiKategoriju(BuildContext context, Kategorija kategorija) {
    final filterKategorija = dostupniFilmovi!
        .where((film) => film.kategorije!.contains(kategorija.id))
        .toList();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => FilmoviEkran(
          naslov: kategorija.naslov!,
          filmovi: filterKategorija,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(25),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 22,
          mainAxisSpacing: 30),
      children: [
        for (final kategorija in DUMMY_CATEGORIES)
          KategorijaStavka(
            kategorija: kategorija,
            onTapKategorije: () {
              _izaberiKategoriju(context, kategorija);
            },
          )
      ],
      /*children: DUMMY_CATEGORIES     .toList(),*/
    );
  }
}
