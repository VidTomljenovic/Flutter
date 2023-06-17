import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/film.dart';

class FavoritiFilmoviNotifier extends StateNotifier<List<Film>> {
  FavoritiFilmoviNotifier() : super([]);
  bool favoritiFilmoviStatus(Film film) {
    final filmJeFavorit = state.contains(film);
    if (filmJeFavorit) {
      state = state.where((film2) => film2.id != film.id).toList();
      return false;
    } else {
      state = [...state, film];
      return true;
    }
  }
}

final favoritiProvider =
    StateNotifierProvider<FavoritiFilmoviNotifier, List<Film>>((ref) {
  return FavoritiFilmoviNotifier();
});
