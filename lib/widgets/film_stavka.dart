import 'package:flutter/material.dart';
import '../models/film.dart';
import 'package:transparent_image/transparent_image.dart';
import './film_stavka_meta.dart';

class FilmStavka extends StatelessWidget {
  const FilmStavka({super.key, required this.film, this.onOdabirFilm});
  final Film film;
  final void Function(Film film)? onOdabirFilm;
  String get tezinaTekst {
    return film.tezina!.name[0].toUpperCase() + film.tezina!.name.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(80),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 5,
      child: InkWell(
        onTap: () {
          onOdabirFilm!(film);
        },
        child: Stack(
          children: [
            Center(
              child: Hero(
                tag: film.id!,
                child: FadeInImage(
                  placeholder: MemoryImage(kTransparentImage),
                  image: NetworkImage(film.slikaUrl!),
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 800,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 4),
                color: Colors.black54,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  children: [
                    Text(
                      film.naslov!,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FilmStavkaMeta(
                          ikona: Icons.schedule,
                          label: '${film.trajanje} min',
                        ),
                        //SizedBox(width: 20),
                        FilmStavkaMeta(
                          ikona: Icons.calendar_month_outlined,
                          label: '${film.godina} god',
                        ),
                        //SizedBox(width: 20),
                        FilmStavkaMeta(
                          ikona: Icons.warning,
                          label: tezinaTekst,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
