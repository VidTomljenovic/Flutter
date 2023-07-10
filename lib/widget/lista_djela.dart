import 'package:flutter/material.dart';
import '../model/djelo.dart';
import 'package:intl/intl.dart';
import 'korisnik_unos.dart';
import './novi_unos.dart';

class ListaDjela extends StatelessWidget {
  @override
  final List<Djelo> unosi;
  final Function obrisiUnos;
  ListaDjela(this.unosi, this.obrisiUnos);
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: unosi.isEmpty
          ? Column(
              children: <Widget>[
                Text('Danas još ništa nije pročitano!'),
                Flexible(
                  child: Image.asset(
                    'assets/images/waiting.png',
                    //fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return //Flexible(
                    //fit: FlexFit.tight,
                    Card(
                  child: Wrap(
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        padding: EdgeInsets.all(15),
                        width: 200,
                        //width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo, width: 2),
                        ),
                        child: Text(
                          'Naslov: ' '\n${unosi[index].naslov}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              //color: Colors.purple,
                              fontSize: 18),
                        ),
                      ),

                      //mainAxisAlignment: MainAxisAlignment.end,
                      //children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                        padding: EdgeInsets.all(15),
                        width: 200,
                        //width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo, width: 2),
                        ),
                        child: Text('Autor:\n' '${unosi[index].autor}',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black)),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                        padding: EdgeInsets.all(15),
                        width: 200,
                        //width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo, width: 2),
                        ),
                        child: Text(
                          'Datum:\n'
                          '${DateFormat('dd.MM.yyy. HH:mm').format(unosi[index].danCitanja)}',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                        padding: EdgeInsets.all(15),
                        width: 200,
                        //width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo, width: 2),
                        ),
                        child: Text(
                          'Vrijeme:\n'
                          '${unosi[index].vrijemeCitanja.toStringAsFixed(2)}'
                          ' min',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () => obrisiUnos(unosi[index].id),
                          color: Theme.of(context).errorColor,
                        ),
                      ),
                    ],

                    //],
                  ),
                );
                //);
              },
              itemCount: unosi.length),
    );
  }
}
