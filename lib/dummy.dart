import 'package:flutter/material.dart';
import './models/film.dart';
import './models/kategorija.dart';

const DUMMY_KATEGORIJE = const [
  Kategorija(
    id: 'c1',
    naslov: 'Triler',
    boja: Colors.purple,
  ),
  Kategorija(
    id: 'c2',
    naslov: 'Akcija',
    boja: Colors.red,
  ),
  Kategorija(
    id: 'c3',
    naslov: 'Drama',
    boja: Colors.orange,
  ),
  Kategorija(
    id: 'c4',
    naslov: 'Romantika',
    boja: Colors.amber,
  ),
  Kategorija(
    id: 'c5',
    naslov: 'Komedija',
    boja: Colors.blue,
  ),
  Kategorija(
    id: 'c6',
    naslov: 'Horor',
    boja: Colors.green,
  ),
  Kategorija(
    id: 'c7',
    naslov: 'Sci-Fi',
    boja: Colors.lightBlue,
  ),
  Kategorija(
    id: 'c8',
    naslov: 'Fantazija',
    boja: Colors.lightGreen,
  ),
  Kategorija(
    id: 'c9',
    naslov: 'Avantura',
    boja: Colors.pink,
  ),
  Kategorija(
    id: 'c10',
    naslov: 'Misterija',
    boja: Colors.teal,
  ),
];

const DUMMY_FILMOVI = const [
  Film(
      id: '1',
      kategorije: ['c1', 'c3'],
      naslov: 'Kad jaganjci utihnu',
      trajanje: 118,
      redatelj: 'Jonathan Demme',
      godina: 1991,
      uloge: ['Jodie Foster', 'Anthony Hopkins,', 'Lawrence A. Bonney'],
      tezina: Tezina.Tezak,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://s3.amazonaws.com/static.rogerebert.com/uploads/blog_post/primary_image/features/timeless-horror-the-25th-anniversary-of-the-silence-of-the-lambs/silence-of-the-lambs.jpg',
      opis:
          'Mladi kadet FBI-a mora dobiti pomoć zatvorenog i manipulativnog ubojice kanibala kako bi uhvatio još jednog serijskog ubojicu, luđaka koji dere kožu svojim žrtvama.'),
  Film(
      id: '2',
      kategorije: ['c1', 'c10'],
      naslov: 'Otok Shutter',
      trajanje: 138,
      redatelj: 'Martin Scorsese',
      godina: 2010,
      uloge: [
        'Leonardo DiCaprio',
        'Emily Mortimer',
        'Mark Ruffalo',
        'Ben Kingsley'
      ],
      tezina: Tezina.Tezak,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/rbZvGN1A1QyZuoKzhCw8QPmf2q0.jpg',
      opis:
          'Teddy Daniels i Chuck Aule, dva američka maršala, poslani su u azil na udaljenom otoku kako bi istražili nestanak pacijenta, gdje Teddy otkriva šokantnu istinu o mjestu.'),
  Film(
      id: '3',
      kategorije: ['c3', 'c4'],
      naslov: 'Engleski pacijent',
      trajanje: 162,
      redatelj: 'Anthony Minghella',
      godina: 1996,
      uloge: [
        'Ralph Fiennes',
        'Juliett Binoche',
        'Willem Dafoe',
        'Kristin Scott Thomas'
      ],
      tezina: Tezina.Osrednji,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/4wDx2YyK2S8r3nuKN0R453foxu5.jpg',
      opis:
          'Na kraju Drugog svjetskog rata mlada medicinska sestra brine o teško opečenoj žrtvi avionske nesreće. Njegova prošlost prikazana je u flashbackovima, otkrivajući upletenost u sudbonosnu ljubavnu aferu'),
  Film(
      id: '4',
      kategorije: ['c3', 'c10'],
      naslov: 'Zodijak',
      trajanje: 157,
      redatelj: 'David Fincher',
      godina: 1999,
      uloge: [
        'Jake Gyllenhaal',
        'Robert Downey Jr.',
        'Mark Ruffalo',
        'Anthony Edwards'
      ],
      tezina: Tezina.Osrednji,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/cYU5msaAPbHRZ3Qm4Y36Fz8wkqX.jpg',
      opis:
          'Između 1968. i 1983. karikaturist iz San Francisca postaje detektiv amater opsjednut pronalaskom Zodiac Killera, neidentificirane osobe koja terorizira sjevernu Kaliforniju ubilačkim pohodom.'),
];
