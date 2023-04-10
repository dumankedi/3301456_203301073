import 'package:flutter/material.dart';
import 'package:hayvan_dostu/Sepet.dart';
import 'package:hayvan_dostu/Urunler.dart';
import 'package:hayvan_dostu/girisYap.dart';
import 'package:hayvan_dostu/Hakkimizda.dart';
import 'package:hayvan_dostu/İletisim.dart';
import 'package:hayvan_dostu/UrunDetay.dart';
import 'package:hayvan_dostu/Profil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HayvanDostu(),
        '/girisYap': (context) => GirisYap(),
        '/Hakkimizda': (context) => Hakkimizda(),
        '/İletisim': (context) => Iletisim(),
        '/UrunDetay': (context) => UrunDetay(),
        '/Profil': (context) => Profil(),
        '/Sepet': (context) => Sepet(),
        '/Urunler': (context) => Urun(),
      },
    );
  }
}

class HayvanDostu extends StatefulWidget {
  String? kullanici;
  String? sifre;

  HayvanDostu({this.kullanici, this.sifre});

  @override
  State<HayvanDostu> createState() => _HayvanDostuState();
}

_launchURLFace() async {
  const url = 'https://tr-tr.facebook.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLInsta() async {
  const url = 'https://www.instagram.com//';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLTwitter() async {
  const url = 'https://twitter.com/?lang=tr';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLYoutube() async {
  const url = 'https://www.youtube.com/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _HayvanDostuState extends State<HayvanDostu> {
  int mevcutresim = 1;
  int mevcutresim2 = 0;
  int mevcutresim3 = 3;
  int mevcutresim4 = 4;
  int mevcutresim5 = 2;
  int mevcutresim6 = 5;
  int hayvan = 0;
  String Hayvan = '';

  void urunleriYenile() {
    setState(() {
      mevcutresim = Random().nextInt(14);
      mevcutresim2 = Random().nextInt(14);
      mevcutresim3 = Random().nextInt(14);
      mevcutresim4 = Random().nextInt(14);
      mevcutresim5 = Random().nextInt(14);
      mevcutresim6 = Random().nextInt(14);
    });
  }

  var UrunResim = [
    'assets/kedikum1.jpg',
    "assets/kedimama1.jpg",
    "assets/kedimama2.jpg",
    "assets/kedimama3.jpg",
    "assets/kedimama4.jpg",
    "assets/kedioyuncak1.jpg",
    "assets/kedioyuncak2.jpg",
    "assets/keditasma1.jpg",
    "assets/keditasma2.jpg",
    "assets/kopekmama1.jpg",
    "assets/kopekmama2.jpg",
    "assets/kopekmama3.jpg",
    "assets/kopekoyuncak1.jpg",
    "assets/kopektasma1.jpg",
    "assets/kopektasma2.jpg",
  ];

  var UrunHayvan = ['Kedi', 'Köpek'];

  var UrunMarka = [
    'Micho',
    'Whiskas',
    'Purina',
    'Royal Canin',
    'Felix',
    'Oyuncak Dünyası',
    'Oyuncak Dünyası',
    'Tasma Canavarı',
    'Tasma Canavarı',
    'Advance',
    'Massima',
    'Pro Line',
    'Oyuncak Dünyası',
    'Tasma Canavarı',
    'Tasma Canavarı',
  ];

  var UrunAgirlik = [
    '5kg',
    '500gr',
    '2kg',
    '4kg',
    '3kg',
    '3kg',
    '3kg',
    '500gr',
    '500gr',
    '3kg',
    '5kg',
    '4kg',
    '300gr',
    '700gr',
    '700gr'
  ];

  var UrunAd = [
    'Kedi Kumu',
    'Kedi Maması',
    'Kedi Maması',
    'Kedi Maması',
    'Kedi Maması',
    'Kedi Oyuncağı',
    'Kedi Oyuncağı',
    'Kedi Tasması',
    'Kedi Tasması',
    'Köpek Maması',
    'Köpek Maması',
    'Köpek Maması',
    'Köpek Oyuncağı',
    'Köpek Tasma',
    'Köpek Tasma'
  ];

  var UrunFiyat = [
    '50 TL',
    '20 TL',
    '50 TL',
    '70 TL',
    '30 TL',
    '40 TL',
    '100 TL',
    '100 TL',
    '30 TL',
    '20 TL',
    '80 TL',
    '15 TL',
    '70 TL',
    '30 TL',
    '45 TL'
  ];

  String baslik = 'Hayvan Dostu';

  @override
  Widget build(BuildContext context) {
    if (widget.kullanici.hashCode == 0) {
      return MaterialApp(
        title: baslik,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.indigo[500],
            title: Text(
              baslik,
              style: TextStyle(fontSize: 30),
            ),
            actions: [
              TextButton(
                onHover: (value) => Colors.indigo[600],
                //color: Colors.orange,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GirisYap()),
                  );
                },
                child: Text(
                  'Giriş Yap',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              IconButton(
                onPressed: urunleriYenile,
                icon: Icon(
                  Icons.home,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sepet()),
                  );
                },
                icon: Icon(
                  Icons.shopping_basket,
                ),
              ),
            ],
          ),
          body: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Urun()),
                      );
                    },
                    child: Text(
                      'İndirimli Ürünler',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: [
                        Card(
                          child: Column(
                            children: [
                              Image.asset(
                                '${UrunResim[mevcutresim]}',
                                width: 90,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunAd[mevcutresim]}'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunFiyat[mevcutresim]}'),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blueAccent,
                                    onPrimary: Colors.white,
                                    padding: EdgeInsets.all(8),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => UrunDetay(
                                          urunResim: UrunResim[mevcutresim],
                                          urunAd: UrunAd[mevcutresim],
                                          urunFiyat: UrunFiyat[mevcutresim],
                                          urunAgirlik: UrunAgirlik[mevcutresim],
                                          urunHayvan: UrunHayvan[hayvan],
                                          urunMarka: UrunMarka[mevcutresim],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'İncele',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: Column(
                            children: [
                              Image.asset(
                                '${UrunResim[mevcutresim2]}',
                                width: 90,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunAd[mevcutresim2]}'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunFiyat[mevcutresim2]}'),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blueAccent,
                                    onPrimary: Colors.white,
                                    padding: EdgeInsets.all(8),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => UrunDetay(
                                          urunResim: UrunResim[mevcutresim2],
                                          urunAd: UrunAd[mevcutresim2],
                                          urunFiyat: UrunFiyat[mevcutresim2],
                                          urunAgirlik:
                                          UrunAgirlik[mevcutresim2],
                                          urunHayvan: UrunHayvan[hayvan],
                                          urunMarka: UrunMarka[mevcutresim2],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'İncele',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: Column(
                            children: [
                              Image.asset(
                                '${UrunResim[mevcutresim3]}',
                                width: 90,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunAd[mevcutresim3]}'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunFiyat[mevcutresim3]}'),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blueAccent,
                                    onPrimary: Colors.white,
                                    padding: EdgeInsets.all(8),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => UrunDetay(
                                          urunResim: UrunResim[mevcutresim3],
                                          urunAd: UrunAd[mevcutresim3],
                                          urunFiyat: UrunFiyat[mevcutresim3],
                                          urunAgirlik:
                                          UrunAgirlik[mevcutresim3],
                                          urunHayvan: UrunHayvan[hayvan],
                                          urunMarka: UrunMarka[mevcutresim3],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'İncele',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Urun()),
                      );
                    },
                    child: Text(
                      'Size Özel',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: [
                        Card(
                          child: Column(
                            children: [
                              Image.asset(
                                '${UrunResim[mevcutresim4]}',
                                width: 90,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunAd[mevcutresim4]}'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunFiyat[mevcutresim4]}'),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blueAccent,
                                    onPrimary: Colors.white,
                                    padding: EdgeInsets.all(8),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => UrunDetay(
                                          urunResim: UrunResim[mevcutresim4],
                                          urunAd: UrunAd[mevcutresim4],
                                          urunFiyat: UrunFiyat[mevcutresim4],
                                          urunAgirlik:
                                          UrunAgirlik[mevcutresim4],
                                          urunHayvan: UrunHayvan[hayvan],
                                          urunMarka: UrunMarka[mevcutresim4],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'İncele',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: Column(
                            children: [
                              Image.asset(
                                '${UrunResim[mevcutresim5]}',
                                width: 90,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunAd[mevcutresim5]}'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunFiyat[mevcutresim5]}'),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blueAccent,
                                    onPrimary: Colors.white,
                                    padding: EdgeInsets.all(8),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => UrunDetay(
                                          urunResim: UrunResim[mevcutresim5],
                                          urunAd: UrunAd[mevcutresim5],
                                          urunFiyat: UrunFiyat[mevcutresim5],
                                          urunAgirlik:
                                          UrunAgirlik[mevcutresim5],
                                          urunHayvan: UrunHayvan[hayvan],
                                          urunMarka: UrunMarka[mevcutresim5],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'İncele',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: Column(
                            children: [
                              Image.asset(
                                '${UrunResim[mevcutresim6]}',
                                width: 90,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunAd[mevcutresim6]}'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunFiyat[mevcutresim6]}'),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blueAccent,
                                    onPrimary: Colors.white,
                                    padding: EdgeInsets.all(8),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => UrunDetay(
                                          urunResim: UrunResim[mevcutresim6],
                                          urunAd: UrunAd[mevcutresim6],
                                          urunFiyat: UrunFiyat[mevcutresim6],
                                          urunAgirlik:
                                          UrunAgirlik[mevcutresim6],
                                          urunHayvan: UrunHayvan[hayvan],
                                          urunMarka: UrunMarka[mevcutresim6],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'İncele',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: Card(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.only(bottom: 35),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Hakkimizda()),
                                  );
                                },
                                child: Text(
                                  'Hakkımızda',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.only(bottom: 35),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Iletisim()),
                                  );
                                },
                                child: Text(
                                  'İletişim Bilgileri',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.only(bottom: 35),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Urun(
                                          hayvan: Hayvan = 'Kedi',
                                        )),
                                  );
                                },
                                child: Text(
                                  'Kedi Ürünleri',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Urun(
                                          hayvan: Hayvan = 'Köpek',
                                        )),
                                  );
                                },
                                child: Text(
                                  'Köpek Ürünleri',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: _launchURLFace,
                                icon: const FaIcon(
                                  FontAwesomeIcons.facebook,
                                  size: 12,
                                ),
                              ),
                              IconButton(
                                onPressed: _launchURLInsta,
                                icon: const FaIcon(
                                  FontAwesomeIcons.instagram,
                                  size: 12,
                                ),
                              ),
                              IconButton(
                                onPressed: _launchURLTwitter,
                                icon: const FaIcon(
                                  FontAwesomeIcons.twitter,
                                  size: 12,
                                ),
                              ),
                              IconButton(
                                onPressed: _launchURLYoutube,
                                icon: const FaIcon(
                                  FontAwesomeIcons.youtube,
                                  size: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return MaterialApp(
        title: baslik,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.indigo[500],
            title: Text(
              baslik,
              style: TextStyle(fontSize: 30),
            ),
            actions: [
              Text('Hoşgeldiniz: ' + widget.kullanici.toString().toUpperCase()),
              IconButton(
                onPressed: urunleriYenile,
                icon: Icon(
                  Icons.home,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Sepet(
                          kullanici: widget.kullanici.toString(),
                        )),
                  );
                },
                icon: Icon(
                  Icons.shopping_basket,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Profil(
                          kullanici: widget.kullanici.toString(),
                        )),
                  );
                },
                icon: Icon(
                  Icons.person,
                ),
              ),
            ],
          ),
          body: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Urun(kullanici: widget.kullanici,hayvan: Hayvan='',)),
                      );
                    },
                    child: Text(
                      'İndirimli Ürünler',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: [
                        Card(
                          child: Column(
                            children: [
                              Image.asset(
                                '${UrunResim[mevcutresim]}',
                                width: 90,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunAd[mevcutresim]}'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunFiyat[mevcutresim]}'),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blueAccent,
                                    onPrimary: Colors.white,
                                    padding: EdgeInsets.all(8),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => UrunDetay(
                                          kullanici:
                                          widget.kullanici.toString(),
                                          urunResim: UrunResim[mevcutresim],
                                          urunAd: UrunAd[mevcutresim],
                                          urunFiyat: UrunFiyat[mevcutresim],
                                          urunAgirlik: UrunAgirlik[mevcutresim],
                                          urunHayvan: UrunHayvan[hayvan],
                                          urunMarka: UrunMarka[mevcutresim],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'İncele',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: Column(
                            children: [
                              Image.asset(
                                '${UrunResim[mevcutresim2]}',
                                width: 90,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunAd[mevcutresim2]}'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunFiyat[mevcutresim2]}'),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blueAccent,
                                    onPrimary: Colors.white,
                                    padding: EdgeInsets.all(8),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => UrunDetay(
                                          kullanici:
                                          widget.kullanici.toString(),
                                          urunResim: UrunResim[mevcutresim2],
                                          urunAd: UrunAd[mevcutresim2],
                                          urunFiyat: UrunFiyat[mevcutresim2],
                                          urunAgirlik:
                                          UrunAgirlik[mevcutresim2],
                                          urunHayvan: UrunHayvan[hayvan],
                                          urunMarka: UrunMarka[mevcutresim2],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'İncele',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: Column(
                            children: [
                              Image.asset(
                                '${UrunResim[mevcutresim3]}',
                                width: 90,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunAd[mevcutresim3]}'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunFiyat[mevcutresim3]}'),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blueAccent,
                                    onPrimary: Colors.white,
                                    padding: EdgeInsets.all(8),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => UrunDetay(
                                          kullanici:
                                          widget.kullanici.toString(),
                                          urunResim: UrunResim[mevcutresim3],
                                          urunAd: UrunAd[mevcutresim3],
                                          urunFiyat: UrunFiyat[mevcutresim3],
                                          urunAgirlik:
                                          UrunAgirlik[mevcutresim3],
                                          urunHayvan: UrunHayvan[hayvan],
                                          urunMarka: UrunMarka[mevcutresim3],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'İncele',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Urun(
                            kullanici: widget.kullanici,hayvan: Hayvan='',
                          ),),
                      );
                    },
                    child: Text(
                      'Size Özel',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: [
                        Card(
                          child: Column(
                            children: [
                              Image.asset(
                                '${UrunResim[mevcutresim4]}',
                                width: 90,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunAd[mevcutresim4]}'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunFiyat[mevcutresim4]}'),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blueAccent,
                                    onPrimary: Colors.white,
                                    padding: EdgeInsets.all(8),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => UrunDetay(
                                          kullanici:
                                          widget.kullanici.toString(),
                                          urunResim: UrunResim[mevcutresim4],
                                          urunAd: UrunAd[mevcutresim4],
                                          urunFiyat: UrunFiyat[mevcutresim4],
                                          urunAgirlik:
                                          UrunAgirlik[mevcutresim4],
                                          urunHayvan: UrunHayvan[hayvan],
                                          urunMarka: UrunMarka[mevcutresim4],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'İncele',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: Column(
                            children: [
                              Image.asset(
                                '${UrunResim[mevcutresim5]}',
                                width: 90,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunAd[mevcutresim5]}'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunFiyat[mevcutresim5]}'),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blueAccent,
                                    onPrimary: Colors.white,
                                    padding: EdgeInsets.all(8),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => UrunDetay(
                                          kullanici:
                                          widget.kullanici.toString(),
                                          urunResim: UrunResim[mevcutresim5],
                                          urunAd: UrunAd[mevcutresim5],
                                          urunFiyat: UrunFiyat[mevcutresim5],
                                          urunAgirlik:
                                          UrunAgirlik[mevcutresim5],
                                          urunHayvan: UrunHayvan[hayvan],
                                          urunMarka: UrunMarka[mevcutresim5],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'İncele',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          child: Column(
                            children: [
                              Image.asset(
                                '${UrunResim[mevcutresim6]}',
                                width: 90,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunAd[mevcutresim6]}'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('${UrunFiyat[mevcutresim6]}'),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.blueAccent,
                                    onPrimary: Colors.white,
                                    padding: EdgeInsets.all(8),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => UrunDetay(
                                          kullanici:
                                          widget.kullanici.toString(),
                                          urunResim: UrunResim[mevcutresim6],
                                          urunAd: UrunAd[mevcutresim6],
                                          urunFiyat: UrunFiyat[mevcutresim6],
                                          urunAgirlik:
                                          UrunAgirlik[mevcutresim6],
                                          urunHayvan: UrunHayvan[hayvan],
                                          urunMarka: UrunMarka[mevcutresim6],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'İncele',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: Card(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.only(bottom: 35),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Hakkimizda(
                                          kullanici: widget.kullanici,
                                        )),
                                  );
                                },
                                child: Text(
                                  'Hakkımızda',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.only(bottom: 35),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Iletisim(
                                          kullanici: widget.kullanici,
                                        )),
                                  );
                                },
                                child: Text(
                                  'İletişim Bilgileri',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.only(bottom: 35),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Urun(
                                        kullanici:
                                        widget.kullanici.toString(),
                                        hayvan: Hayvan = 'Kedi',
                                      ),),
                                  );
                                },
                                child: Text(
                                  'Kedi Ürünleri',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Urun(
                                        kullanici: widget.kullanici.toString(),
                                        hayvan: Hayvan = 'Köpek',
                                      ),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Köpek Ürünleri',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: _launchURLFace,
                                icon: const FaIcon(
                                  FontAwesomeIcons.facebook,
                                  size: 12,
                                ),
                              ),
                              IconButton(
                                onPressed: _launchURLInsta,
                                icon: const FaIcon(
                                  FontAwesomeIcons.instagram,
                                  size: 12,
                                ),
                              ),
                              IconButton(
                                onPressed: _launchURLTwitter,
                                icon: const FaIcon(
                                  FontAwesomeIcons.twitter,
                                  size: 12,
                                ),
                              ),
                              IconButton(
                                onPressed: _launchURLYoutube,
                                icon: const FaIcon(
                                  FontAwesomeIcons.youtube,
                                  size: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
