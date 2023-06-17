import 'package:flutter_complete_guide/dummy.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final filmoviProvider = Provider((ref) {
  return DUMMY_MOVIES;
});
