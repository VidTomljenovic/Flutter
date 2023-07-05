import 'package:flutter/material.dart';
import '../models/film.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/favoriti_provider.dart';

class FilmDetaljEkran extends ConsumerWidget {
  const FilmDetaljEkran({Key? key, required this.film}) : super(key: key);
  final Film? film;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritiFilmovi = ref.watch(favoritiProvider);
    final jeFavorit = favoritiFilmovi.contains(film);

    return Scaffold(
      appBar: AppBar(
        title: Text(film!.naslov!),
        actions: [
          IconButton(
            onPressed: () {
              final dodano = ref
                  .read(favoritiProvider.notifier)
                  .favoritiFilmoviStatus(film!);
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(dodano
                      ? 'Film dodan u favorite!'
                      : 'Film maknut iz favorita!'),
                ),
              );
            },
            icon: Icon(jeFavorit ? Icons.star : Icons.star_border),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 600,
              child: Hero(
                tag: film!.id!,
                child: Image.network(
                  film!.slikaUrl!,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Uloge',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (final uloge in film!.uloge!)
                            Text(
                              uloge,
                              style: TextStyle(fontSize: 22),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Flexible(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Opis',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          film!.opis!,
                          softWrap: true,
                          style: TextStyle(
                              fontSize: 21, fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
