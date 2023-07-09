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
      kategorije: ['c2', 'c3', 'c6'],
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
  Film(
      id: '16',
      kategorije: ['c1', 'c6', 'c10'],
      naslov: 'Psiho',
      trajanje: 109,
      redatelj: 'Alfred Hitchcock',
      godina: 1960,
      uloge: ['Anthony Perkins', 'Janet Leigh,', 'Vera Miles'],
      tezina: Tezina.Osrednji,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/vThE1UgrYq6wdWkPR3acU72iJRx.jpg',
      opis:
          'Tajnica iz Phoenixa pronevjeri 40.000 dolara od klijenta svog poslodavca, pobjegne i prijavi se u udaljeni motel koji vodi mladić pod dominacijom svoje majke.'),
  Film(
      id: '17',
      kategorije: ['c3', 'c8', 'c10'],
      naslov: 'Svjetionik',
      trajanje: 109,
      redatelj: 'Robert Eggers',
      godina: 2019,
      uloge: ['Robert Pattinson', 'Willem Dafoe', 'Valeriia Karaman'],
      tezina: Tezina.Tezak,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/i51wnN9phojyn14xHjQt6rv1r0x.jpg',
      opis:
          'Tajnica iz Phoenixa pronevjeri 40.000 dolara od klijenta svog poslodavca, pobjegne i prijavi se u udaljeni motel koji vodi mladić pod dominacijom svoje majke.'),
  Film(
      id: '18',
      kategorije: ['c3', 'c8', 'c10'],
      naslov: 'Vještica',
      trajanje: 92,
      redatelj: 'Robert Eggers',
      godina: 2015,
      uloge: ['Anya Taylor-Joy', 'Ralph Ineson', 'Kate Dickie'],
      tezina: Tezina.Tezak,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/dEY6lCgiODGMDPY3Oo2j09ngPiq.jpg',
      opis:
          'Obitelj u Novoj Engleskoj 1630-ih razdiraju sile vještičarenja, crne magije i opsjednutosti.'),
  Film(
      id: '19',
      kategorije: [
        'c2',
        'c9',
      ],
      naslov: 'Dina',
      trajanje: 152,
      redatelj: 'Denis Veilleneuve',
      godina: 2021,
      uloge: ['Timothée Chalamet', 'Rebecca Ferguson', 'Zendaya'],
      tezina: Tezina.Osrednji,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/jYEW5xZkZk2WTrdbMGAPFuBqbDc.jpg',
      opis:
          'Obitelj u Novoj Engleskoj 1630-ih razdiraju sile vještičarenja, crne magije i opsjednutosti.'),
  Film(
      id: '20',
      kategorije: ['c2', 'c5', 'c9'],
      naslov: 'Sve u isto vrijeme',
      trajanje: 149,
      redatelj: 'Daniel Kwan',
      godina: 2022,
      uloge: ['Michelle Yeoh', 'Stephanie Hsu', 'Jamie Lee Curtis'],
      tezina: Tezina.Osrednji,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/ss0Os3uWJfQAENILHZUdX8Tt1OC.jpg',
      opis:
          'Sredovječna kineska imigrantkinja uvučena je u ludu avanturu u kojoj samo ona može spasiti postojanje istražujući druge svemire i povezujući se sa životima koje je mogla voditi.'),
  Film(
      id: '21',
      kategorije: ['c2', 'c8', 'c9'],
      naslov: 'Gospodar prstenova: Prstenova družina',
      trajanje: 178,
      redatelj: 'Peter Jackson',
      godina: 2001,
      uloge: ['Elijah Wood', 'Ian McKellen', 'Viggo Mortense'],
      tezina: Tezina.Osrednji,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/tqj7NKj11keFuLzPsBDMUq2dOUO.jpg',
      opis:
          'Krotki Hobit iz Shirea i osam drugova kreću na putovanje kako bi uništili moćni Prsten Jednog i spasili Međuzemlje od Mračnog Gospodara Saurona.'),
  Film(
      id: '22',
      kategorije: ['c2', 'c8', 'c9'],
      naslov: 'Gospodar prstenova: Dvije kule',
      trajanje: 179,
      redatelj: 'Peter Jackson',
      godina: 2002,
      uloge: ['Elijah Wood', 'Ian McKellen', 'Viggo Mortense'],
      tezina: Tezina.Osrednji,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/kWYfW2Re0rUDE6IHhy4CRuKWeFr.jpg',
      opis:
          'Dok se Frodo i Sam približavaju Mordoru uz pomoć prevrtljivog Goluma, podijeljeno društvo se suprotstavlja Sauronovom novom savezniku, Sarumanu, i njegovim hordama Isengarda.'),
  Film(
      id: '23',
      kategorije: ['c2', 'c8', 'c9'],
      naslov: 'Gospodar prstenova: Povratak kralja',
      trajanje: 201,
      redatelj: 'Peter Jackson',
      godina: 2003,
      uloge: ['Elijah Wood', 'Ian McKellen', 'Viggo Mortense'],
      tezina: Tezina.Osrednji,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/2u7zbn8EudG6kLlBzUYqP8RyFU4.jpg',
      opis:
          'Gandalf i Aragorn vode Svijet ljudi protiv Sauronove vojske kako bi odvratili njegov pogled od Froda i Sama dok se približavaju planini Prokletstva s Jedinstvenim prstenom.'),
  Film(
      id: '24',
      kategorije: ['c4', 'c5'],
      naslov: 'Amelie',
      trajanje: 124,
      redatelj: 'Jean-Pierre Jeunet',
      godina: 2001,
      uloge: ['Audrey Tautou', 'Mathieu Kassovitz', 'Rufus'],
      tezina: Tezina.Osrednji,
      jeHollyWood: false,
      jeEuropski: true,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/9TEUJy5aRP7LaM1LKTfcxVK34JK.jpg',
      opis:
          'Unatoč tome što je uhvaćena u svom maštovitom svijetu, Amelie, mlada konobarica, odlučuje pomoći ljudima da pronađu sreću. Njezina potraga za širenjem radosti vodi je na putovanje na kojem pronalazi pravu ljubav.'),
  Film(
      id: '25',
      kategorije: ['c3', 'c4', 'c5'],
      naslov: 'Život je lijep',
      trajanje: 116,
      redatelj: 'Roberto Benigni',
      godina: 1997,
      uloge: ['Roberto Benigni', 'Nicoletta Braschi', 'Giorgio Cantarini'],
      tezina: Tezina.Lak,
      jeHollyWood: false,
      jeEuropski: true,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/6aNKD81RHR1DqUUa8kOZ1TBY1Lp.jpg',
      opis:
          'Kada otvoreni židovski konobar i njegov sin postanu žrtve holokausta, on koristi savršenu mješavinu volje, humora i mašte kako bi zaštitio svog sina od opasnosti oko njihovog logora.'),
  Film(
      id: '26',
      kategorije: ['c3', 'c4'],
      naslov: 'Nedodirljivi',
      trajanje: 112,
      redatelj: 'Olivier Nakache',
      godina: 2011,
      uloge: ['François Cluzet', 'Omar Sy', 'Anne Le Ny'],
      tezina: Tezina.Osrednji,
      jeHollyWood: false,
      jeEuropski: true,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/cK070s3Qdn1Ib7Gq8RgIyJKgvu3.jpg',
      opis:
          'Nakon što postane kvadriplegičar zbog nesreće na paraglidingu, aristokrat angažira mladića s projekta da mu bude njegovatelj.'),
  Film(
      id: '27',
      kategorije: ['c5', 'c6'],
      naslov: 'Noć glupih mrtvaca',
      trajanje: 99,
      redatelj: 'Edgar Wright',
      godina: 2004,
      uloge: ['Simon Pegg', 'Nick Frost', 'Kate Ashfield'],
      tezina: Tezina.Lak,
      jeHollyWood: false,
      jeEuropski: true,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/mrdHbaCp3ysDrzUHle5eQlY9Vzu.jpg',
      opis:
          'Jednostavne, besciljne živote londonskog prodavača elektronike i njegovog cimera skitnice poremeti zombi apokalipsa.'),
  Film(
      id: '28',
      kategorije: ['c2', 'c9'],
      naslov: 'Kon-Tiki',
      trajanje: 118,
      redatelj: 'Joachim Rønning',
      godina: 2012,
      uloge: ['Pål Sverre Hagen', 'Anders Baasmo' 'Gustaf Skarsgård'],
      tezina: Tezina.Lak,
      jeHollyWood: false,
      jeEuropski: true,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/4sIXSFviwmJ9lWfRmhQGUdefBtL.jpg',
      opis:
          'Legendarni istraživač Thor Heyerdahl prešao je Pacifik dug 4300 milja na splavi od balzavog drveta 1947., u nastojanju da dokaže da je bilo moguće da se Južnoamerikanci nasele u Polineziji u pretkolumbovsko doba.'),
  Film(
      id: '29',
      kategorije: ['c2', 'c7'],
      naslov: 'Matrix',
      trajanje: 136,
      redatelj: 'Lana Wachowski',
      godina: 1999,
      uloge: ['Keanu Reeves', 'Laurence Fishburne', 'Carrie-Anne Moss'],
      tezina: Tezina.Tezak,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/fNG7i7RqMErkcqhohV2a6cV1Ehy.jpg',
      opis:
          'Kad lijepa neznanka odvede računalnog hakera Nea u zastrašujuće podzemlje, on otkriva šokantnu istinu - život koji poznaje razrađena je prijevara zle cyber-inteligencije.'),
  Film(
      id: '30',
      kategorije: ['c5', 'c7', 'c9'],
      naslov: 'Povratak u budućnost',
      trajanje: 116,
      redatelj: 'Robert Zemeckis',
      godina: 1985,
      uloge: ['Michael J. Fox', 'Christopher Lloyd' 'Lea Thompson'],
      tezina: Tezina.Lak,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/3lbTiIN8cVonMUQwaeh5nvn61lr.jpg',
      opis:
          'Marty McFly, 17-godišnji srednjoškolac, slučajno je poslan 30 godina u prošlost u DeLoreanu koji putuje kroz vrijeme, a izumio ga je njegov bliski prijatelj, znanstvenik Doc Brown.'),
  Film(
      id: '31',
      kategorije: ['c6'],
      naslov: 'Ono',
      trajanje: 135,
      redatelj: 'Andy Muschietti',
      godina: 2017,
      uloge: ['Bill Skarsgård', 'Jaeden Martell', 'Finn Wolfhard'],
      tezina: Tezina.Osrednji,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/cHbSjL1KQLBzEOVwRJ07V693MuA.jpg',
      opis:
          'U ljeto 1989. skupina zlostavljane djece udružuje se kako bi uništila čudovište koje mijenja oblik, koje se maskira u klauna i lovi djecu Derryja, njihovog malog grada u Maineu.'),
  Film(
      id: '32',
      kategorije: ['c6', 'c7', 'c10'],
      naslov: 'Stvor',
      trajanje: 109,
      redatelj: 'John Carpenter',
      godina: 1982,
      uloge: ['Kurt Russell', 'Wilford Brimley', 'Keith David'],
      tezina: Tezina.Osrednji,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/6XzBqtnupPmDLMMkh6CKarfb3YB.jpg',
      opis:
          'Istraživački tim na Antarktici lovi vanzemaljac koji mijenja oblik i preuzima izgled svojih žrtava.'),
  Film(
      id: '33',
      kategorije: ['c1', 'c2', 'c10'],
      naslov: 'Telefonska govornica',
      trajanje: 81,
      redatelj: 'Joel Schumacher',
      godina: 2002,
      uloge: ['Colin Farrell', 'Kiefer Sutherland' 'Forest Whitaker'],
      tezina: Tezina.Osrednji,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/44cEDmV6ppfeA5z4zetyVfO3TFq.jpg',
      opis:
          'Publicist Stuart Shepard nađe se zarobljen u telefonskoj govornici, priklješten iznuđivačkom snajperskom puškom. Nesposoban otići ili primiti vanjsku pomoć, Stuartovo pregovaranje s pozivateljem dovodi do vrhunca koji pada u oči.'),
  Film(
      id: '34',
      kategorije: ['c8', 'c9'],
      naslov: 'Harry Potter IV: Plameni pehar',
      trajanje: 157,
      redatelj: 'Mike Newell',
      godina: 2002,
      uloge: ['Daniel Radcliffe', 'Emma Watson', 'Rupert Grint'],
      tezina: Tezina.Lak,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/8f9dnOtpArDrOMEylpSN9Sc6fuz.jpg',
      opis:
          'Harry Potter se natječe u opasnom turniru između suparničkih škola magije, ali mu pažnju odvlače noćne more koje se stalno ponavljaju.'),
  Film(
      id: '34',
      kategorije: ['c2', 'c8', 'c9'],
      naslov: 'Pirati s kariba: Mrtvačeva škrinja',
      trajanje: 151,
      redatelj: 'Gore Verbinski',
      godina: 2002,
      uloge: ['Johnny Depp', 'Orlando Bloom', 'Keira Knightley'],
      tezina: Tezina.Lak,
      jeHollyWood: true,
      jeEuropski: false,
      slikaUrl:
          'https://www.themoviedb.org/t/p/original/14F9FtM2DOPex5zrZkauJwWobtl.jpg',
      opis:
          'Jack Sparrow žuri da povrati srce Davyja Jonesa kako bi izbjegao porobljavanje njegove duše Jonesovoj službi, dok drugi prijatelji i neprijatelji također traže srce za svoje ciljeve.'),
];
