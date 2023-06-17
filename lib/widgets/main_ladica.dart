import 'package:flutter/material.dart';

class MainLadica extends StatelessWidget {
  const MainLadica({super.key, required this.onIzaberiEkran});

  final void Function(String identifikator) onIzaberiEkran;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 52, 138, 167),
                Colors.lightBlueAccent,
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.theater_comedy_rounded,
                  size: 45,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    'Cooking up',
                    style: TextStyle(color: Colors.white, fontSize: 36),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            tileColor: Colors.grey.withOpacity(0.4),
            leading: Icon(
              Icons.slideshow_rounded,
              size: 30,
              color: Colors.grey.shade800,
            ),
            title: Text(
              'Filmovi',
              style: TextStyle(color: Colors.blueAccent, fontSize: 30),
            ),
            onTap: () {
              onIzaberiEkran('Filmovi');
            },
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            tileColor: Colors.grey.withOpacity(0.4),
            leading: Icon(
              Icons.settings_outlined,
              size: 30,
              color: Colors.grey.shade800,
            ),
            title: Text(
              'Filteri',
              style: TextStyle(color: Colors.blueAccent, fontSize: 30),
            ),
            onTap: () {
              onIzaberiEkran('Filteri');
            },
          ),
        ],
      ),
    );
  }
}
