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
      kategorije: ['c2'],
      naslov: 'Silence of the Lambs2',
      trajanje: 122,
      redatelj: 'Quentin Tarantino2',
      godina: 1999,
      uloge: ['Tom Cruise2', 'Mads Mikelsen2,', 'Andrew Tate'],
      tezina: Tezina.Tezak,
      jeHollyWood: false,
      jeEuropski: true,
      slikaUrl:
          'https://s3.amazonaws.com/static.rogerebert.com/uploads/blog_post/primary_image/features/timeless-horror-the-25th-anniversary-of-the-silence-of-the-lambs/silence-of-the-lambs.jpg',
      opis:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris est sem, gravida id dignissim sit amet, aliquet ultricies lacus. Donec condimentum nulla tortor, at interdum risus porttitor consectetur. Cras placerat in felis et maximus. Maecenas posuere, ex in molestie dignissim, dolor quam suscipit massa, a congue purus quam nec neque. Maecenas nulla purus, posuere ac convallis non, pharetra vitae nisi. Nunc pharetra augue eu purus sodales, ut semper velit ornare. Ut efficitur tincidunt tortor, id pulvinar nunc ultrices non. Nam maximus, eros a mollis porta, ipsum nunc ultrices risus, sit amet sagittis magna metus eget nulla. Duis tincidunt nunc metus, quis viverra enim eleifend id. Nulla facilisi.2'),
  Film(
      id: '3',
      kategorije: ['c3'],
      naslov: 'Silence of the Lambs3',
      trajanje: 123,
      redatelj: 'Quentin Tarantino3',
      godina: 1999,
      uloge: ['Tom Cruise2', 'Mads Mikelsen2,', 'Andrew Tate'],
      tezina: Tezina.Tezak,
      jeHollyWood: false,
      jeEuropski: true,
      slikaUrl:
          'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.primevideo.com%2Fdetail%2FThe-Silence-of-the-Lambs%2F0RE6ATEKAU3ISASWJX6E0Z5DHN&psig=AOvVaw2PtV6tG5niU_KI5MIc9WE9&ust=1682863466468000&source=images&cd=vfe&ved=0CA4QjRxqFwoTCLD0k8Kuz_4CFQAAAAAdAAAAABAQ',
      opis:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris est sem, gravida id dignissim sit amet, aliquet ultricies lacus. Donec condimentum nulla tortor, at interdum risus porttitor consectetur. Cras placerat in felis et maximus. Maecenas posuere, ex in molestie dignissim, dolor quam suscipit massa, a congue purus quam nec neque. Maecenas nulla purus, posuere ac convallis non, pharetra vitae nisi. Nunc pharetra augue eu purus sodales, ut semper velit ornare. Ut efficitur tincidunt tortor, id pulvinar nunc ultrices non. Nam maximus, eros a mollis porta, ipsum nunc ultrices risus, sit amet sagittis magna metus eget nulla. Duis tincidunt nunc metus, quis viverra enim eleifend id. Nulla facilisi.3'),
  Film(
      id: '4',
      kategorije: ['c1', 'c2'],
      naslov: 'Silence of the Lambs2',
      trajanje: 122,
      redatelj: 'Quentin Tarantino2',
      godina: 1999,
      uloge: ['Tom Cruise2', 'Mads Mikelsen2,', 'Andrew Tate'],
      tezina: Tezina.Tezak,
      jeHollyWood: false,
      jeEuropski: true,
      slikaUrl:
          'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
      opis:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris est sem, gravida id dignissim sit amet, aliquet ultricies lacus. Donec condimentum nulla tortor, at interdum risus porttitor consectetur. Cras placerat in felis et maximus. Maecenas posuere, ex in molestie dignissim, dolor quam suscipit massa, a congue purus quam nec neque. Maecenas nulla purus, posuere ac convallis non, pharetra vitae nisi. Nunc pharetra augue eu purus sodales, ut semper velit ornare. Ut efficitur tincidunt tortor, id pulvinar nunc ultrices non. Nam maximus, eros a mollis porta, ipsum nunc ultrices risus, sit amet sagittis magna metus eget nulla. Duis tincidunt nunc metus, quis viverra enim eleifend id. Nulla facilisi.2'),
];
