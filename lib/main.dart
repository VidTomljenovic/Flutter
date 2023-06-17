import 'package:flutter/material.dart';
import 'screens/kategorija_ekran.dart';
import 'screens/tabovi_ekran.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(
      ProviderScope(
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VidFilmovi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TaboviEkran(),
    );
  }
}
