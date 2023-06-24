import 'package:flutter/material.dart';
import '../models/film.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/favoriti_provider.dart';

class FilmDetaljEkran extends ConsumerWidget {
  const FilmDetaljEkran({super.key, this.film});
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
            Column(
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
                    Column(
                      children: [
                        Text(
                          'Uloge: ',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        for (final uloge in film!.uloge!)
                          Text(
                            uloge,
                            style: TextStyle(fontSize: 22),
                          )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Opis: ',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          film!.opis!,
                          softWrap: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
