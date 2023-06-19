import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/kategorija.dart';
import 'package:flutter_complete_guide/widgets/kategorija_stavka.dart';
import '../widgets/kategorija_stavka.dart';
import '../dummy.dart';
import 'filmovi_ekran.dart';
import '../models/film.dart';

class EkranKategorije extends StatefulWidget {
  EkranKategorije({super.key, this.dostupniFilmovi});
  final List<Film>? dostupniFilmovi;

  @override
  State<EkranKategorije> createState() => _EkranKategorijeState();
}

class _EkranKategorijeState extends State<EkranKategorije>
    with SingleTickerProviderStateMixin {
  late AnimationController _animacijaKontroler;
  void initState() {
    super.initState();
    print('init called');
    _animacijaKontroler = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 222),
        lowerBound: 0,
        upperBound: 1);
    _animacijaKontroler.forward();
  }

  void dispose() {
    _animacijaKontroler.dispose();
    super.dispose();
  }

  void _izaberiKategoriju(BuildContext context, Kategorija kategorija) {
    final filterKategorija = widget.dostupniFilmovi!
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
    print('build called');
    return AnimatedBuilder(
      animation: _animacijaKontroler,
      child: GridView(
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
      ),
      builder: (context, child) => SlideTransition(
        position: Tween(
          begin: Offset(0, 0.3),
          end: Offset(0, 0),
        ).animate(
            CurvedAnimation(parent: _animacijaKontroler, curve: Curves.linear)),
        child: child,
      ),
    );
  }
}
