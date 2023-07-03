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
    naslov: 'Krimi/Akcija',
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
          'https://www.themoviedb.org/t/p/original/aYcnDyLMnpKce1FOYUpZrXtgUye.jpg',
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
  Film(
      id: '5',
      kategorije: ['c1', 'c3'],
      naslov: 'Nema zemlje za starce',
      trajanje: 122,
      redatelj: 'Ethan Coen' 'Joel Coen',
      godina: 2007,
      uloge: [
        'Tommy Lee Jones',
        'Javier Bardem',
        'Josh Brolin',
        'Woody Harrelson'
      ],
      tezina: Tezina.Tezak,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/fCCvn3xsG29TGKJPvZgTRppsDgk.jpg',
      opis:
          'Nasilje i nered nastaju nakon što lovac naiđe na propali posao s drogom i više od dva milijuna dolara u gotovini u blizini Rio Grandea.'),
  Film(
      id: '6',
      kategorije: ['c3', 'c5'],
      naslov: 'Vuk s Wall Streeta',
      trajanje: 180,
      redatelj: 'Martin Scorsese',
      godina: 2013,
      uloge: [
        'Leonardo DiCaprio',
        'Jonah Hill',
        'Margot Robbie',
        'Matthew McConaughey'
      ],
      tezina: Tezina.Lak,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/7Nwnmyzrtd0FkcRyPqmdzTPppQa.jpg',
      opis:
          'Temeljen na istinitoj priči o Jordanu Belfortu, od njegovog uspona do bogatog burzovnog mešetara koji je živio na visokoj nozi do njegovog pada koji uključuje kriminal, korupciju i saveznu vladu.'),
  Film(
      id: '7',
      kategorije: ['c3', 'c7', 'c9'],
      naslov: 'Međuzvjezdani',
      trajanje: 169,
      redatelj: 'Christopher Nolan',
      godina: 2013,
      uloge: [
        'Matthew McConaughey',
        'Anne Hathaway',
        'Jessica Chastain',
      ],
      tezina: Tezina.Tezak,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/xnAdZe8wg9aeRSxcJksPlGk68cL.jpg',
      opis:
          'Kada Zemlja u budućnosti postane nenastanjiva, farmer i bivši NASA-in pilot, Joseph Cooper, dobiva zadatak da upravlja svemirskom letjelicom, zajedno s timom istraživača, kako bi pronašli novi planet za ljude.'),
  Film(
      id: '8',
      kategorije: ['c2', 'c7', 'c9'],
      naslov: 'Početak',
      trajanje: 148,
      redatelj: 'Christopher Nolan',
      godina: 2010,
      uloge: [
        'Leonardo DiCaprio',
        'Joseph Gordon-Levitt',
        'Elliot Page',
        'Tom Hardy',
        'Cillian Murphy'
      ],
      tezina: Tezina.Tezak,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/b5xAbWqVNsp14lCtR2vhaURWo7G.jpg',
      opis:
          'Lopov koji krade korporativne tajne korištenjem tehnologije dijeljenja snova dobiva obrnuti zadatak da usadi ideju u um izvršnog direktora, ali njegova tragična prošlost može osuditi projekt i njegov tim na katastrofu.'),
  Film(
      id: '9',
      kategorije: ['c1', 'c3'],
      naslov: 'Noćne kronike',
      trajanje: 117,
      redatelj: 'Dan Gilroy',
      godina: 2010,
      uloge: ['Jake Gyllenhaal', 'Rene Russo', 'Bill Paxton'],
      tezina: Tezina.Osrednji,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/qfmi70NrUElTWdZoaNVsbBRdHQ9.jpg',
      opis:
          'Kad se Louis Bloom, prevarant koji očajnički traži posao, ugura u svijet kriminalističkog novinarstva u Los Anđelesu, briše granicu između promatrača i sudionika kako bi postao zvijezda vlastite priče.'),
  Film(
      id: '10',
      kategorije: ['c3', 'c6'],
      naslov: 'Američki psiho',
      trajanje: 102,
      redatelj: 'Mary Harron',
      godina: 2000,
      uloge: [
        'Christian Bale',
        'Justin Theroux',
        'Willem Defoe',
        'Chloë Sevigny'
      ],
      tezina: Tezina.Tezak,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/alWtP7JwoanQyqXzg3PCbEFrfwS.jpg',
      opis:
          'Bogati direktor investicijskog bankarstva u New Yorku, Patrick Bateman, skriva svoj alternativni psihopatski ego od svojih suradnika i prijatelja dok dublje zaranja u svoje nasilne, hedonističke fantazije.'),
  Film(
      id: '11',
      kategorije: ['c3', 'c4'],
      naslov: 'Prljavi ples',
      trajanje: 100,
      redatelj: 'Emile Ardolino',
      godina: 1987,
      uloge: ['Patrick Swayze', 'Jennifer Gray', 'Jerry Orbach'],
      tezina: Tezina.Lak,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/6iDQCBUSZKzY8Rnu8ECwl2gXcfG.jpg',
      opis:
          'Provodeći ljeto u odmaralištu Catskills sa svojom obitelji, Frances "Baby" Houseman zaljubljuje se u instruktora plesa u kampu, Johnnyja Castlea.'),
  Film(
      id: '12',
      kategorije: ['c3', 'c4'],
      naslov: 'Zameo ih vjetar',
      trajanje: 238,
      redatelj: 'Victor Fleming',
      godina: 1939,
      uloge: ['Clark Gable', 'Vivien Leigh', 'Thomas Mitchell'],
      tezina: Tezina.Lak,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/p6LJ6Hs3gMe6htojTxY8SMetwGP.jpg',
      opis:
          'Provodeći ljeto u odmaralištu Catskills sa svojom obitelji, Frances "Baby" Houseman zaljubljuje se u instruktora plesa u kampu, Johnnyja Castlea.'),
  Film(
      id: '13',
      kategorije: ['c3', 'c4', 'c5'],
      naslov: 'Kad je Harry sreo Sally',
      trajanje: 95,
      redatelj: 'Rob Reiner',
      godina: 1989,
      uloge: ['Billy Crystal', 'Meg Ryan', 'Carrie Fisher'],
      tezina: Tezina.Lak,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/xd5SYDUhNVGLUeK2epbEjnVBpPN.jpg',
      opis:
          'Harry i Sally poznaju se godinama i jako su dobri prijatelji, no boje se da bi seks uništio prijateljstvo.'),
  Film(
      id: '14',
      kategorije: ['c3', 'c4', 'c7'],
      naslov: 'Vječni sjaj nepobjedivog uma',
      trajanje: 108,
      redatelj: 'Michael Gondry',
      godina: 1989,
      uloge: ['Jim Carrey', 'Kate Winslet', 'Tom Wilkinson'],
      tezina: Tezina.Lak,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/jz9Kep0xWjiA6QDHSsd43ASxNfj.jpg',
      opis:
          'Kad se njihov odnos pokvari, par se podvrgava medicinskom zahvatu kako bi jedno drugo zauvijek izbrisali iz sjećanja.'),
  Film(
      id: '15',
      kategorije: [
        'c4',
        'c5',
      ],
      naslov: 'Zgodna žena',
      trajanje: 109,
      redatelj: 'Garry Marshall',
      godina: 1990,
      uloge: [
        'Richard Gere',
        'Julia Roberts',
        'Jason Alexander',
      ],
      tezina: Tezina.Lak,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/lP7FWXPiruhp3ohKwqxr0QUPcyX.jpg',
      opis:
          'Čovjek u legalnom, ali štetnom poslu treba pratnju za neka društvena događanja i unajmi lijepu prostitutku koju upozna... samo da bi se zaljubio.'),
];
