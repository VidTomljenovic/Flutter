import 'package:flutter/material.dart';
import 'kategorija_ekran.dart';
import 'filmovi_ekran.dart';
import '../models/film.dart';
import '../widgets/main_ladica.dart';
import '../screens/filteri_ekran.dart';
import '../dummy.dart';
import 'package:flutter_complete_guide/providers/filmovi_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_complete_guide/providers/favoriti_provider.dart';
import '../providers/filteri_provider.dart';

const kInicijalniFilteri = {
  Filter.jeHollyWood: false,
  Filter.jeEuropski: false,
};

class TaboviEkran extends ConsumerStatefulWidget {
  const TaboviEkran({super.key});
  @override
  ConsumerState<TaboviEkran> createState() => _TaboviEkranState();
}

class _TaboviEkranState extends ConsumerState<TaboviEkran> {
  int _odabranaStranicaIndex = 0;

  void _odaberiStranicu(int index) {
    setState(() {
      _odabranaStranicaIndex = index;
    });
  }

  void _postaviEkran(String identifikator) async {
    Navigator.of(context).pop();
    if (identifikator == 'Filteri') {
      final rezultat = await Navigator.of(context).push<Map<Filter, bool>>(
        MaterialPageRoute(
          builder: (ctx) => FilteriEkran(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final dostupniFilmovi = ref.watch(filtriraniFilmoviProvider);
    Widget aktivnaStranica = EkranKategorije(
      dostupniFilmovi: dostupniFilmovi,
    );
    var aktivnaStranicaNaslov = 'Kategorije';
    if (_odabranaStranicaIndex == 1) {
      final favoritiFilmova = ref.watch(favoritiProvider);
      aktivnaStranica = FilmoviEkran(
        filmovi: favoritiFilmova,
      );
      aktivnaStranicaNaslov = 'Favoriti';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(aktivnaStranicaNaslov),
      ),
      drawer: MainLadica(
        onIzaberiEkran: _postaviEkran,
      ),
      body: aktivnaStranica,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _odaberiStranicu,
        currentIndex: _odabranaStranicaIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Kategorije'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favoriti'),
        ],
      ),
    );
  }
}
