import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widget/grafikon_stupac.dart';
import './grafikon_stupac.dart';
import '../model/djelo.dart';
import 'package:intl/intl.dart';

class Grafikon extends StatelessWidget {
  @override
  final List<Djelo> nedavnoCitano;
  Grafikon(this.nedavnoCitano);
  List<Map<String, Object>> get grupiranNedavnoCitano {
    return List.generate(7, (index) {
      final dan = DateTime.now().subtract(
        Duration(days: index),
      );
      var sumaVremena = 0.00;
      for (var i = 0; i < nedavnoCitano.length; i++) {
        if (nedavnoCitano[i].danCitanja.day == dan.day &&
            nedavnoCitano[i].danCitanja.month == dan.month &&
            nedavnoCitano[i].danCitanja.year == dan.year) {
          sumaVremena += nedavnoCitano[i].vrijemeCitanja;
        }
      }
      return {
        'Dan': DateFormat.EEEE().format(dan).substring(0, 1),
        'Vrijeme': sumaVremena
      };
    }).reversed.toList();
  }

  double get maxProcitano {
    return grupiranNedavnoCitano.fold(0.0, (suma, item) {
      return suma + (item['Vrijeme'] as double);
    });
  }

  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Container(
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: grupiranNedavnoCitano.map((data) {
            return Flexible(
              fit: FlexFit.tight,
              child: GrafikonStupac(
                  (data['Dan'] as String),
                  (data['Vrijeme'] as double),
                  maxProcitano == 0.0
                      ? 0.0
                      : (data['Vrijeme'] as double) / maxProcitano),
            );
          }).toList(),
        ),
      ),
    );
  }
}
