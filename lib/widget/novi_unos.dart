import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'korisnik_unos.dart';
import './lista_djela.dart';

class NoviUnos extends StatefulWidget {
  final Function dodajDjelo;
  NoviUnos(this.dodajDjelo);

  @override
  State<NoviUnos> createState() => _NoviUnosState();
}

class _NoviUnosState extends State<NoviUnos> {
  @override
  final naslovController = TextEditingController();
  final autorController = TextEditingController();
  final vrijemeCitanjaController = TextEditingController();
  DateTime? _izabraniDatum;
  void _unesiPodatke() {
    final uneseniNaslov = naslovController.text;
    final uneseniAutor = autorController.text;
    final unesenoVrijeme = double.parse(vrijemeCitanjaController.text);
    if (uneseniNaslov.isEmpty ||
        uneseniAutor.isEmpty ||
        unesenoVrijeme <= 0 ||
        _izabraniDatum == null) {
      return;
    } else {
      widget.dodajDjelo(
          uneseniNaslov, uneseniAutor, unesenoVrijeme, _izabraniDatum);
    }
    Navigator.of(context).pop();
  }

  void _pokaziKalendar() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2023),
            lastDate: DateTime.now())
        .then((zeljeniDatum) {
      if (zeljeniDatum == null) {
        return;
      }
      setState(() {
        _izabraniDatum = zeljeniDatum;
      });
    });
  }

  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        margin: EdgeInsets.all(10),
        //padding: EdgeInsets.all(6),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(labelText: 'Naslov'),
                controller: naslovController,
              ),
              TextField(
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(labelText: 'Autor'),
                controller: autorController,
              ),
              TextField(
                style: TextStyle(fontSize: 16),
                decoration: InputDecoration(labelText: 'Vrijeme citanja (min)'),
                controller: vrijemeCitanjaController,
                keyboardType: TextInputType.number,
              ),
              Container(
                height: 80,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        _izabraniDatum == null
                            ? 'Nije izabran datum'
                            : DateFormat('dd.MM.yyy').format(_izabraniDatum!),
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextButton(
                        child: Text(
                          'Izaberite datum',
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        onPressed: _pokaziKalendar,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      //color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () => _unesiPodatke(),
                  child: Text(
                    'Dodaj',
                    style: TextStyle(fontSize: 16),
                  ),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.purple)),
                ),
              )
            ]),
      ),
    );
  }
}
