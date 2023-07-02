import 'package:flutter/material.dart';
import '../models/film.dart';
import '../widgets/film_stavka.dart';
import './film_detalji_ekran.dart';

class FilmoviEkran extends StatelessWidget {
  const FilmoviEkran({super.key, this.naslov, required this.filmovi});
  final String? naslov;
  final List<Film> filmovi;
  void odabirFilma(BuildContext context, Film film) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => FilmDetaljEkran(
          film: film,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget? sadrzaj;
    if (filmovi.isEmpty) {
      sadrzaj = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Ovdje nema ničega!',
              style: TextStyle(fontSize: 26),
            ),
            SizedBox(height: 15),
            Text('Pokušajte izabrati nešto :)', style: TextStyle(fontSize: 18)),
          ],
        ),
      );
    }
    if (filmovi.isNotEmpty) {
      sadrzaj = GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Adjust the number of columns as needed
          crossAxisSpacing: 10.0, // Adjust the spacing between columns
          mainAxisSpacing: 10.0, // Adjust the spacing between rows
        ),
        itemCount: filmovi.length,
        itemBuilder: (ctx, index) => FilmStavka(
          film: filmovi[index],
          onOdabirFilm: (film) {
            odabirFilma(context, film);
          },
        ),
      );
    }

    if (naslov == null) {
      return sadrzaj!;
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text(naslov!),
        ),
        body: sadrzaj,
      );
    }
  }
}
