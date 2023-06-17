import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'filmovi_provider.dart';

enum Filter { jeHollyWood, jeEuropski }

class FilteriNotifier extends StateNotifier<Map<Filter, bool>> {
  FilteriNotifier()
      : super({Filter.jeHollyWood: false, Filter.jeEuropski: false});
  void postaviFiltere(Map<Filter, bool> izabraniFilteri) {
    state = izabraniFilteri;
  }

  void postaviFilter(Filter filter, bool jeAktivan) {
    state = {
      ...state,
      filter: jeAktivan,
    };
  }
}

final filteriProvider =
    StateNotifierProvider<FilteriNotifier, Map<Filter, bool>>(
        (ref) => FilteriNotifier());

final filtriraniFilmoviProvider = Provider((ref) {
  final filmovi = ref.watch(filmoviProvider);
  final aktivniFilteri = ref.watch(filteriProvider);
  return filmovi.where((film) {
    if (aktivniFilteri[Filter.jeHollyWood]! && !film.jeHollyWood!) {
      return false;
    }
    if (aktivniFilteri[Filter.jeEuropski]! && !film.jeEuropski!) {
      return false;
    }
    return true;
  }).toList();
});
