import 'package:flutter/material.dart';

class GrafikonStupac extends StatelessWidget {
  @override
  final String label;
  final double provedenoVrijeme;
  final double postotakUkupnogVremena;
  GrafikonStupac(
      this.label, this.provedenoVrijeme, this.postotakUkupnogVremena);
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(provedenoVrijeme.toStringAsFixed(0)),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 100,
          width: 25,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2.0),
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(220, 220, 220, 1),
                ),
              ),
              FractionallySizedBox(
                  heightFactor: postotakUkupnogVremena,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(label)
      ],
    );
  }
}
