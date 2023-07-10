import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './widget/lista_djela.dart';
import './widget/novi_unos.dart';
import 'widget/korisnik_unos.dart';
import 'widget/grafikon.dart';
import '../model/djelo.dart';

void main() {
  runApp(MojaAplikacija());
}

class MojaAplikacija extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter navike citanja',
      theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          accentColor: Colors.purple,
          errorColor: Colors.red),
      home: PocetniEkran(),
    );
  }
}

class PocetniEkran extends StatefulWidget {
  @override
  State<PocetniEkran> createState() => _PocetniEkranState();
}

class _PocetniEkranState extends State<PocetniEkran> {
  @override
  final List<Djelo> _korisnikDjela = [];

  List<Djelo> get _nedavnoCitano {
    return _korisnikDjela.where((dj) {
      return dj.danCitanja.isAfter(DateTime.now().subtract(
        Duration(days: 7),
      ));
    }).toList(); //Add toList() here
  }

  void _dodajNovoDjelo(String naslovDjela, String autorDjela,
      double vrijemeCitanjaDjela, DateTime izabranDatum) {
    final novoDjelo = Djelo(
      id: DateTime.now().toString(),
      naslov: naslovDjela,
      autor: autorDjela,
      vrijemeCitanja: vrijemeCitanjaDjela,
      danCitanja: izabranDatum,
    );
    setState(() {
      _korisnikDjela.add(novoDjelo);
    });
  }

  void _zapocniDodavanjeDjela(BuildContext naziv) {
    showModalBottomSheet(
        context: naziv,
        builder: (bnaziv) {
          return NoviUnos(_dodajNovoDjelo);
        });
  }

  void _izbrisiUnos(String id) {
    setState(() {
      _korisnikDjela.removeWhere((tx) => tx.id == id);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              color: Colors.white,
              icon: Icon(Icons.add_box_outlined),
              onPressed: () => _zapocniDodavanjeDjela(context)),
        ],
        title: Text(
          'Praćenje mojih navika čitanja',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Grafikon(_nedavnoCitano),
            ListaDjela(_korisnikDjela, _izbrisiUnos),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_box_rounded),
        onPressed: () => _zapocniDodavanjeDjela(context),
      ),
    );
  }
}
