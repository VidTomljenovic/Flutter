import 'package:flutter/material.dart';

class FilmStavkaMeta extends StatelessWidget {
  const FilmStavkaMeta({super.key, this.ikona, this.label});
  final IconData? ikona;
  final String? label;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          ikona,
          size: 25,
          color: Colors.white,
        ),
        SizedBox(width: 6),
        Text(
          label!,
          style: TextStyle(color: Colors.white, fontSize: 18),
        )
      ],
    );
  }
}
