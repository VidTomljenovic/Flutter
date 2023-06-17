import 'package:flutter/material.dart';
import '../screens/filmovi_ekran.dart';
import '../screens/kategorija_ekran.dart';
import '../models/kategorija.dart';

class KategorijaStavka extends StatelessWidget {
  KategorijaStavka(
      {super.key, required this.kategorija, required this.onTapKategorije});
  //final String id;
  //final String naslov;
  //final Color boja;
  final Kategorija kategorija;
  final void Function() onTapKategorije;
  //KategorijaStavka(this.id, this.naslov, this.boja, this.kategorija);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapKategorije,
      splashColor: Colors.brown,
      borderRadius: BorderRadius.circular(36),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              kategorija.boja!.withOpacity(0.55),
              kategorija.boja!.withOpacity(0.9)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(36)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            kategorija.naslov!,
            style:
                TextStyle(color: Colors.white, fontSize: 25, letterSpacing: 4),
          ),
        ),
      ),
    );
  }
}
