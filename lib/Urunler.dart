import 'package:flutter/material.dart';
import 'package:hayvan_dostu/UrunDetay.dart';
import 'package:hayvan_dostu/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hayvan_dostu/girisYap.dart';
import 'package:hayvan_dostu/Sepet.dart';
import 'package:hayvan_dostu/Profil.dart';
import 'dart:math';

class Urun extends StatefulWidget {
  String? kullanici;
  String? hayvan;

  Urun({this.kullanici,this.hayvan});

  @override
  State<Urun> createState() => _UrunState();
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




class _UrunState extends State<Urun> {

  int mevcutresim = 1;
  int mevcutresim2 = 0;
  int mevcutresim3 = 3;
  int mevcutresim4 = 4;
  int mevcutresim5 = 2;
  int mevcutresim6 = 5;
  int mevcutresim7 = 6;
  int mevcutresim8 = 7;
  int mevcutresim9 = 8;
  int hayvan=0;

  void urunleriYenile() {
    setState(() {
      mevcutresim = Random().nextInt(13);
      mevcutresim2 = Random().nextInt(13);
      mevcutresim3 = Random().nextInt(13);
      mevcutresim4 = Random().nextInt(13);
      mevcutresim5 = Random().nextInt(13);
      mevcutresim6 = Random().nextInt(13);
    });
  }

  var UrunResim = [
    'assets/kedikum1.jpg',
    "assets/kedimama1.jpg",
    "assets/kedimama2.jpg",
    "assets/kedimama3.jpg",
    "assets/kedimama4.jpg",
    "assets/kedioyuncak1.jpg",
    "assets/kopekceket1.jpeg",
    "assets/kopekmama1.jpg",
    "assets/kopekmama2.jpg",
    "assets/kopekmama4.jpeg",
    "assets/kopekmama3.jpg",
    "assets/kopektasma1.jpg",
    "assets/kopektasma2.jpg",
  ];

  var UrunKedi=[
    'assets/kedikum1.jpg',
    "assets/kedimama1.jpg",
    "assets/kedimama2.jpg",
    "assets/kedimama3.jpg",
    "assets/kedimama4.jpg",
    "assets/kedioyuncak1.jpg",
    "assets/kedioyuncak2.jpg",
    "assets/keditasma1.jpg",
    "assets/keditasma2.jpg",
    "assets/kedimama5.jpg",
    "assets/kedimama6.jpg",
    'assets/kedikap1.jpg',
    'assets/kediyatak1.jpg',
  ];

  var UrunKopek=[
    "assets/kopekceket1.jpeg",
    "assets/kopekkafes1.jpg",
    "assets/kopekmama1.jpg",
    "assets/kopekmama2.jpg",
    "assets/kopekmama3.jpg",
    "assets/kopekmama4.jpeg",
    "assets/kopekmama6.jpg",
    "assets/kopektasma1.jpg",
    "assets/kopektasma2.jpg",
    "assets/kopektasma3.jpg",
    "assets/kopektasma4.jpg",
    "assets/kopekyatak1.jpg",
    "assets/kopekyatak2.jpg",
  ];

  var UrunHayvan = ['Kedi', 'Köpek'];

  var UrunMarka = [
    'Micho',
    'Whiskas',
    'Purina',
    'Royal Canin',
    'Felix',
    'Oyuncak Dünyası',
    'Köpek Style',
    'Advance',
    'Massima',
    'Pro Line',
    'Royal Canin',
    'Tasma Canavarı',
    'Tasma Canavarı',
  ];

  var UrunMarkaKopek=[
    'Köpek Style',
    'PetHane',
    'Advance',
    'Massima',
    'Pro Line',
    'Royal Canin',
    'BestPet',
    'Tasma Canavarı',
    'Tasma Canavarı',
    'Tasma Canavarı',
    'Tasma Canavarı',
    'PetHane',
    'Petlebi',
  ];

  var UrunMarkaKedi=[
    'Micho',
    'Whiskas',
    'Purina',
    'Royal Canin',
    'Felix',
    'Oyuncak Dünyası',
    'Oyuncak Dünyası',
    'Tasma Canavarı',
    'Tasma Canavarı',
    'Reflex',
    'Foxy',
    'PetHane',
    'BestPet'
  ];

  var UrunAgirlikKopek=[
    '2kg',
    '10kg',
    '2kg',
    '3kg',
    '4kg',
    '4kg',
    '5kg',
    '300gr',
    '500gr',
    '500gr',
    '500gr',
    '1kg',
    '1kg',
  ];

  var UrunAgirlikKedi=[
    '5kg',
    '500gr',
    '2kg',
    '4kg',
    '3kg',
    '3kg',
    '3kg',
    '500gr',
    '500gr',
    '500gr',
    '500gr',
    '1kg',
    '1kg',
    '2kg',
    '15kg',
    '2kg',
    '2kg'
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
    '4kg',
    '3kg',
    '5kg',
    '4kg',
    '700gr',
    '700gr'
  ];

  var UrunAdKopek=[
    'Köpek Ceketi',
    'Köpek Kafesi',
    'Köpek Maması',
    'Köpek Maması',
    'Köpek Maması',
    'Köpek Maması',
    'Köpek Maması',
    'Köpek Tasma',
    'Köpek Tasma',
    'Köpek Tasma',
    'Köpek Tasma',
    'Köpek Yatağı',
    'Köpek Yatağı',
  ];

  var UrunAdKedi=[
    'Kedi Kumu',
    'Kedi Maması',
    'Kedi Maması',
    'Kedi Maması',
    'Kedi Maması',
    'Kedi Oyuncağı',
    'Kedi Oyuncağı',
    'Kedi Tasması',
    'Kedi Tasması',
    'Kedi Maması',
    'Kedi Maması',
    'Kedi Mama Kabı',
    'Kedi Yatağı',
  ];

  var UrunAd = [
    'Kedi Kumu',
    'Kedi Maması',
    'Kedi Maması',
    'Kedi Maması',
    'Kedi Maması',
    'Kedi Oyuncağı',
    'Köpek Ceketi',
    'Köpek Maması',
    'Köpek Maması',
    'Köpek Maması',
    'Köpek Maması',
    'Köpek Tasma',
    'Köpek Tasma'
  ];

  var UrunFiyatKopek=[
    '120 TL',
    '80 TL',
    '20 TL',
    '20 TL',
    '50 TL',
    '60 TL',
    '20 TL',
    '70 TL',
    '30 TL',
    '45 TL',
    '30 TL',
    '80 TL',
    '80 TL',
  ];
  var UrunFiyatKedi=[
    '50 TL',
    '20 TL',
    '50 TL',
    '70 TL',
    '30 TL',
    '40 TL',
    '100 TL',
    '100 TL',
    '30 TL',
    '20 Tl',
    '150 Tl',
    '15 Tl',
    '35 Tl'
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
    '60 TL',
    '30 TL',
    '20 TL',
    '80 TL',
    '15 TL',
  ];


  String baslik = 'Hayvan Dostu';

  @override
  Widget build(BuildContext context) {
    if (widget.kullanici.hashCode == 0) {
      if(widget.hayvan==''){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HayvanDostu()),
                    );
                  },
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
              ],
            ),
            body: Center(
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
                        'Ürünler',
                        style: TextStyle(
                          fontSize: 30,
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
                                            kullanici: widget.kullanici,
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
                                            kullanici: widget.kullanici,
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
                                            kullanici: widget.kullanici,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunResim[mevcutresim3],
                                            urunAd: UrunAd[mevcutresim3],
                                            urunFiyat: UrunFiyat[mevcutresim3],
                                            urunAgirlik: UrunAgirlik[mevcutresim3],
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
                                            kullanici: widget.kullanici,
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
                                            kullanici: widget.kullanici,
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
                    ],
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
                                            kullanici: widget.kullanici,
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
                                            kullanici: widget.kullanici,
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
                                            kullanici: widget.kullanici,
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
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed: () {},
                            child: Icon(
                              Icons.arrow_back_sharp,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed: urunleriYenile,
                            child: Text(
                              '1',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed:urunleriYenile,
                            child: Text(
                              '2',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed: urunleriYenile,
                            child: Icon(
                              Icons.arrow_forward_sharp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: SizedBox(
                      width: double.infinity,
                      //height: 202,
                      child: Card(
                        color: Colors.white,
                        child: Row(
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
      else if(widget.hayvan=='Köpek'){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HayvanDostu()),
                    );
                  },
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
              ],
            ),
            body: Center(
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
                        'Köpek Ürünleri',
                        style: TextStyle(
                          fontSize: 30,
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
                                  '${UrunKopek[mevcutresim]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKopek[mevcutresim]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKopek[mevcutresim]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKopek[mevcutresim],
                                            urunAd: UrunAdKopek[mevcutresim],
                                            urunFiyat: UrunFiyatKopek[mevcutresim],
                                            urunAgirlik: UrunAgirlikKopek[mevcutresim],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKopek[mevcutresim],
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
                                  '${UrunKopek[mevcutresim2]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKopek[mevcutresim2]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKopek[mevcutresim2]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKopek[mevcutresim2],
                                            urunAd: UrunAdKopek[mevcutresim2],
                                            urunFiyat: UrunFiyatKopek[mevcutresim2],
                                            urunAgirlik: UrunAgirlikKopek[mevcutresim2],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKopek[mevcutresim2],
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
                                  '${UrunKopek[mevcutresim3]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKopek[mevcutresim3]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKopek[mevcutresim3]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKopek[mevcutresim3],
                                            urunAd: UrunAdKopek[mevcutresim3],
                                            urunFiyat: UrunFiyatKopek[mevcutresim3],
                                            urunAgirlik: UrunAgirlikKopek[mevcutresim3],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKopek[mevcutresim3],
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: [
                          Card(
                            child: Column(
                              children: [
                                Image.asset(
                                  '${UrunKopek[mevcutresim4]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKopek[mevcutresim4]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKopek[mevcutresim4]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKopek[mevcutresim4],
                                            urunAd: UrunAdKopek[mevcutresim4],
                                            urunFiyat: UrunFiyatKopek[mevcutresim4],
                                            urunAgirlik: UrunAgirlikKopek[mevcutresim4],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKopek[mevcutresim4],
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
                                  '${UrunKopek[mevcutresim5]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKopek[mevcutresim5]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKopek[mevcutresim5]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKopek[mevcutresim5],
                                            urunAd: UrunAdKopek[mevcutresim5],
                                            urunFiyat: UrunFiyatKopek[mevcutresim5],
                                            urunAgirlik: UrunAgirlikKopek[mevcutresim5],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKopek[mevcutresim5],
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
                                  '${UrunKopek[mevcutresim6]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKopek[mevcutresim6]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKopek[mevcutresim6]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKopek[mevcutresim6],
                                            urunAd: UrunAdKopek[mevcutresim6],
                                            urunFiyat: UrunFiyatKopek[mevcutresim6],
                                            urunAgirlik: UrunAgirlikKopek[mevcutresim6],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKopek[mevcutresim6],
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: [
                          Card(
                            child: Column(
                              children: [
                                Image.asset(
                                  '${UrunKopek[mevcutresim7]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKopek[mevcutresim7]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKopek[mevcutresim7]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKopek[mevcutresim7],
                                            urunAd: UrunAdKopek[mevcutresim7],
                                            urunFiyat: UrunFiyatKopek[mevcutresim7],
                                            urunAgirlik: UrunAgirlikKopek[mevcutresim7],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKopek[mevcutresim7],
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
                                  '${UrunKopek[mevcutresim8]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKopek[mevcutresim8]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKopek[mevcutresim8]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKopek[mevcutresim8],
                                            urunAd: UrunAdKopek[mevcutresim8],
                                            urunFiyat: UrunFiyatKopek[mevcutresim8],
                                            urunAgirlik: UrunAgirlikKopek[mevcutresim8],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKopek[mevcutresim8],
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
                                  '${UrunKopek[mevcutresim9]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKopek[mevcutresim9]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKopek[mevcutresim9]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKopek[mevcutresim9],
                                            urunAd: UrunAdKopek[mevcutresim9],
                                            urunFiyat: UrunFiyatKopek[mevcutresim9],
                                            urunAgirlik: UrunAgirlikKopek[mevcutresim9],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKopek[mevcutresim9],
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
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed: () {},
                            child: Icon(
                              Icons.arrow_back_sharp,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed: urunleriYenile,
                            child: Text(
                              '1',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed:urunleriYenile,
                            child: Text(
                              '2',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed: urunleriYenile,
                            child: Icon(
                              Icons.arrow_forward_sharp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: SizedBox(
                      width: double.infinity,
                      //height: 202,
                      child: Card(
                        color: Colors.white,
                        child: Row(
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
      else{
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HayvanDostu()),
                    );
                  },
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
              ],
            ),
            body: Center(
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
                        'Kedi Ürünleri',
                        style: TextStyle(
                          fontSize: 30,
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
                                  '${UrunKedi[mevcutresim]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKedi[mevcutresim]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKedi[mevcutresim]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKedi[mevcutresim],
                                            urunAd: UrunAdKedi[mevcutresim],
                                            urunFiyat: UrunFiyatKedi[mevcutresim],
                                            urunAgirlik: UrunAgirlikKedi[mevcutresim],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKedi[mevcutresim],
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
                                  '${UrunKedi[mevcutresim2]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKedi[mevcutresim2]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKedi[mevcutresim2]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKedi[mevcutresim2],
                                            urunAd: UrunAdKedi[mevcutresim2],
                                            urunFiyat: UrunFiyatKedi[mevcutresim2],
                                            urunAgirlik: UrunAgirlikKedi[mevcutresim2],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKedi[mevcutresim2],
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
                                  '${UrunKedi[mevcutresim3]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKedi[mevcutresim3]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKedi[mevcutresim3]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKedi[mevcutresim3],
                                            urunAd: UrunAdKedi[mevcutresim3],
                                            urunFiyat: UrunFiyatKedi[mevcutresim3],
                                            urunAgirlik: UrunAgirlikKedi[mevcutresim3],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKedi[mevcutresim3],
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: [
                          Card(
                            child: Column(
                              children: [
                                Image.asset(
                                  '${UrunKedi[mevcutresim4]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKedi[mevcutresim4]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKedi[mevcutresim4]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKedi[mevcutresim4],
                                            urunAd: UrunAdKedi[mevcutresim4],
                                            urunFiyat: UrunFiyatKedi[mevcutresim4],
                                            urunAgirlik: UrunAgirlikKedi[mevcutresim4],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKedi[mevcutresim4],
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
                                  '${UrunKedi[mevcutresim5]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKedi[mevcutresim5]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKedi[mevcutresim5]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKedi[mevcutresim5],
                                            urunAd: UrunAdKedi[mevcutresim5],
                                            urunFiyat: UrunFiyatKedi[mevcutresim5],
                                            urunAgirlik: UrunAgirlikKedi[mevcutresim5],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKedi[mevcutresim5],
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
                                  '${UrunKedi[mevcutresim6]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKedi[mevcutresim6]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKedi[mevcutresim6]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKedi[mevcutresim6],
                                            urunAd: UrunAdKedi[mevcutresim6],
                                            urunFiyat: UrunFiyatKedi[mevcutresim6],
                                            urunAgirlik: UrunAgirlikKedi[mevcutresim6],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKedi[mevcutresim6],
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: [
                          Card(
                            child: Column(
                              children: [
                                Image.asset(
                                  '${UrunKedi[mevcutresim7]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKedi[mevcutresim7]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKedi[mevcutresim7]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKedi[mevcutresim7],
                                            urunAd: UrunAdKedi[mevcutresim7],
                                            urunFiyat: UrunFiyatKedi[mevcutresim7],
                                            urunAgirlik: UrunAgirlikKedi[mevcutresim7],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKedi[mevcutresim7],
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
                                  '${UrunKedi[mevcutresim8]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKedi[mevcutresim8]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKedi[mevcutresim8]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKedi[mevcutresim8],
                                            urunAd: UrunAdKedi[mevcutresim8],
                                            urunFiyat: UrunFiyatKedi[mevcutresim8],
                                            urunAgirlik: UrunAgirlikKedi[mevcutresim8],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKedi[mevcutresim8],
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
                                  '${UrunKedi[mevcutresim9]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKedi[mevcutresim9]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKedi[mevcutresim9]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKedi[mevcutresim9],
                                            urunAd: UrunAdKedi[mevcutresim9],
                                            urunFiyat: UrunFiyatKedi[mevcutresim9],
                                            urunAgirlik: UrunAgirlikKedi[mevcutresim9],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKedi[mevcutresim9],
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
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed: () {},
                            child: Icon(
                              Icons.arrow_back_sharp,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed: urunleriYenile,
                            child: Text(
                              '1',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed:urunleriYenile,
                            child: Text(
                              '2',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed: urunleriYenile,
                            child: Icon(
                              Icons.arrow_forward_sharp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: SizedBox(
                      width: double.infinity,
                      //height: 202,
                      child: Card(
                        color: Colors.white,
                        child: Row(
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    } else {
      if(widget.hayvan==''){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.indigo[500],
              title: Text(
                baslik,
                style: TextStyle(fontSize: 30),
              ),
              actions: [
                Text('Hoşgeldiniz: ' + widget.kullanici.toString().toUpperCase()),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HayvanDostu(kullanici: widget.kullanici.toString(),)),
                    );
                  },
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
            body: Center(
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
                        'Ürünler',
                        style: TextStyle(
                          fontSize: 30,
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
                                            kullanici: widget.kullanici,
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
                                            kullanici: widget.kullanici,
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
                                            kullanici: widget.kullanici,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunResim[mevcutresim3],
                                            urunAd: UrunAd[mevcutresim3],
                                            urunFiyat: UrunFiyat[mevcutresim3],
                                            urunAgirlik: UrunAgirlik[mevcutresim3],
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
                                            kullanici: widget.kullanici,
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
                                            kullanici: widget.kullanici,
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
                    ],
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
                                            kullanici: widget.kullanici,
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
                                            kullanici: widget.kullanici,
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
                                            kullanici: widget.kullanici,
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
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed: () {},
                            child: Icon(
                              Icons.arrow_back_sharp,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed: urunleriYenile,
                            child: Text(
                              '1',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed:urunleriYenile,
                            child: Text(
                              '2',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed: urunleriYenile,
                            child: Icon(
                              Icons.arrow_forward_sharp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: SizedBox(
                      width: double.infinity,
                      //height: 202,
                      child: Card(
                        color: Colors.white,
                        child: Row(
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
      else if(widget.hayvan=='Köpek'){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.indigo[500],
              title: Text(
                baslik,
                style: TextStyle(fontSize: 30),
              ),
              actions: [
                Text('Hoşgeldiniz: ' + widget.kullanici.toString().toUpperCase()),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HayvanDostu(kullanici: widget.kullanici.toString(),)),
                    );
                  },
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
            body: Center(
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
                        'Köpek Ürünleri',
                        style: TextStyle(
                          fontSize: 30,
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
                                  '${UrunKopek[mevcutresim]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKopek[mevcutresim]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKopek[mevcutresim]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKopek[mevcutresim],
                                            urunAd: UrunAdKopek[mevcutresim],
                                            urunFiyat: UrunFiyatKopek[mevcutresim],
                                            urunAgirlik: UrunAgirlikKopek[mevcutresim],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKopek[mevcutresim],
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
                                  '${UrunKopek[mevcutresim2]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKopek[mevcutresim2]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKopek[mevcutresim2]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKopek[mevcutresim2],
                                            urunAd: UrunAdKopek[mevcutresim2],
                                            urunFiyat: UrunFiyatKopek[mevcutresim2],
                                            urunAgirlik: UrunAgirlikKopek[mevcutresim2],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKopek[mevcutresim2],
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
                                  '${UrunKopek[mevcutresim3]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKopek[mevcutresim3]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKopek[mevcutresim3]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKopek[mevcutresim3],
                                            urunAd: UrunAdKopek[mevcutresim3],
                                            urunFiyat: UrunFiyatKopek[mevcutresim3],
                                            urunAgirlik: UrunAgirlikKopek[mevcutresim3],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKopek[mevcutresim3],
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: [
                          Card(
                            child: Column(
                              children: [
                                Image.asset(
                                  '${UrunKopek[mevcutresim4]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKopek[mevcutresim4]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKopek[mevcutresim4]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKopek[mevcutresim4],
                                            urunAd: UrunAdKopek[mevcutresim4],
                                            urunFiyat: UrunFiyatKopek[mevcutresim4],
                                            urunAgirlik: UrunAgirlikKopek[mevcutresim4],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKopek[mevcutresim4],
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
                                  '${UrunKopek[mevcutresim5]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKopek[mevcutresim5]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKopek[mevcutresim5]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKopek[mevcutresim5],
                                            urunAd: UrunAdKopek[mevcutresim5],
                                            urunFiyat: UrunFiyatKopek[mevcutresim5],
                                            urunAgirlik: UrunAgirlikKopek[mevcutresim5],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKopek[mevcutresim5],
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
                                  '${UrunKopek[mevcutresim6]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKopek[mevcutresim6]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKopek[mevcutresim6]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKopek[mevcutresim6],
                                            urunAd: UrunAdKopek[mevcutresim6],
                                            urunFiyat: UrunFiyatKopek[mevcutresim6],
                                            urunAgirlik: UrunAgirlikKopek[mevcutresim6],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKopek[mevcutresim6],
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: [
                          Card(
                            child: Column(
                              children: [
                                Image.asset(
                                  '${UrunKopek[mevcutresim7]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKopek[mevcutresim7]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKopek[mevcutresim7]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKopek[mevcutresim7],
                                            urunAd: UrunAdKopek[mevcutresim7],
                                            urunFiyat: UrunFiyatKopek[mevcutresim7],
                                            urunAgirlik: UrunAgirlikKopek[mevcutresim7],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKopek[mevcutresim7],
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
                                  '${UrunKopek[mevcutresim8]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKopek[mevcutresim8]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKopek[mevcutresim8]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKopek[mevcutresim8],
                                            urunAd: UrunAdKopek[mevcutresim8],
                                            urunFiyat: UrunFiyatKopek[mevcutresim8],
                                            urunAgirlik: UrunAgirlikKopek[mevcutresim8],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKopek[mevcutresim8],
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
                                  '${UrunKopek[mevcutresim9]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKopek[mevcutresim9]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKopek[mevcutresim9]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKopek[mevcutresim9],
                                            urunAd: UrunAdKopek[mevcutresim9],
                                            urunFiyat: UrunFiyatKopek[mevcutresim9],
                                            urunAgirlik: UrunAgirlikKopek[mevcutresim9],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKopek[mevcutresim9],
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
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed: () {},
                            child: Icon(
                              Icons.arrow_back_sharp,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed: urunleriYenile,
                            child: Text(
                              '1',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed:urunleriYenile,
                            child: Text(
                              '2',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed: urunleriYenile,
                            child: Icon(
                              Icons.arrow_forward_sharp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: SizedBox(
                      width: double.infinity,
                      //height: 202,
                      child: Card(
                        color: Colors.white,
                        child: Row(
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
      else{
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.indigo[500],
              title: Text(
                baslik,
                style: TextStyle(fontSize: 30),
              ),
              actions: [
                Text('Hoşgeldiniz: ' + widget.kullanici.toString().toUpperCase()),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HayvanDostu(kullanici: widget.kullanici.toString(),)),
                    );
                  },
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
            body: Center(
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
                        'Kedi Ürünleri',
                        style: TextStyle(
                          fontSize: 30,
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
                                  '${UrunKedi[mevcutresim]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKedi[mevcutresim]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKedi[mevcutresim]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKedi[mevcutresim],
                                            urunAd: UrunAdKedi[mevcutresim],
                                            urunFiyat: UrunFiyatKedi[mevcutresim],
                                            urunAgirlik: UrunAgirlikKedi[mevcutresim],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKedi[mevcutresim],
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
                                  '${UrunKedi[mevcutresim2]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKedi[mevcutresim2]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKedi[mevcutresim2]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKedi[mevcutresim2],
                                            urunAd: UrunAdKedi[mevcutresim2],
                                            urunFiyat: UrunFiyatKedi[mevcutresim2],
                                            urunAgirlik: UrunAgirlikKedi[mevcutresim2],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKedi[mevcutresim2],
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
                                  '${UrunKedi[mevcutresim3]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKedi[mevcutresim3]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKedi[mevcutresim3]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKedi[mevcutresim3],
                                            urunAd: UrunAdKedi[mevcutresim3],
                                            urunFiyat: UrunFiyatKedi[mevcutresim3],
                                            urunAgirlik: UrunAgirlikKedi[mevcutresim3],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKedi[mevcutresim3],
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: [
                          Card(
                            child: Column(
                              children: [
                                Image.asset(
                                  '${UrunKedi[mevcutresim4]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKedi[mevcutresim4]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKedi[mevcutresim4]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKedi[mevcutresim4],
                                            urunAd: UrunAdKedi[mevcutresim4],
                                            urunFiyat: UrunFiyatKedi[mevcutresim4],
                                            urunAgirlik: UrunAgirlikKedi[mevcutresim4],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKedi[mevcutresim4],
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
                                  '${UrunKedi[mevcutresim5]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKedi[mevcutresim5]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKedi[mevcutresim5]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKedi[mevcutresim5],
                                            urunAd: UrunAdKedi[mevcutresim5],
                                            urunFiyat: UrunFiyatKedi[mevcutresim5],
                                            urunAgirlik: UrunAgirlikKedi[mevcutresim5],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKedi[mevcutresim5],
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
                                  '${UrunKedi[mevcutresim6]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKedi[mevcutresim6]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKedi[mevcutresim6]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKedi[mevcutresim6],
                                            urunAd: UrunAdKedi[mevcutresim6],
                                            urunFiyat: UrunFiyatKedi[mevcutresim6],
                                            urunAgirlik: UrunAgirlikKedi[mevcutresim6],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKedi[mevcutresim6],
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: [
                          Card(
                            child: Column(
                              children: [
                                Image.asset(
                                  '${UrunKedi[mevcutresim7]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKedi[mevcutresim7]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKedi[mevcutresim7]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKedi[mevcutresim7],
                                            urunAd: UrunAdKedi[mevcutresim7],
                                            urunFiyat: UrunFiyatKedi[mevcutresim7],
                                            urunAgirlik: UrunAgirlikKedi[mevcutresim7],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKedi[mevcutresim7],
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
                                  '${UrunKedi[mevcutresim8]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKedi[mevcutresim8]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKedi[mevcutresim8]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKedi[mevcutresim8],
                                            urunAd: UrunAdKedi[mevcutresim8],
                                            urunFiyat: UrunFiyatKedi[mevcutresim8],
                                            urunAgirlik: UrunAgirlikKedi[mevcutresim8],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKedi[mevcutresim8],
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
                                  '${UrunKedi[mevcutresim9]}',
                                  width: 90,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunAdKedi[mevcutresim9]}'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('${UrunFiyatKedi[mevcutresim9]}'),
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
                                            kullanici: widget.kullanici,
                                            urunResim: UrunKedi[mevcutresim9],
                                            urunAd: UrunAdKedi[mevcutresim9],
                                            urunFiyat: UrunFiyatKedi[mevcutresim9],
                                            urunAgirlik: UrunAgirlikKedi[mevcutresim9],
                                            urunHayvan: UrunHayvan[hayvan],
                                            urunMarka: UrunMarkaKedi[mevcutresim9],
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
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: Row(
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed: () {},
                            child: Icon(
                              Icons.arrow_back_sharp,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed: urunleriYenile,
                            child: Text(
                              '1',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed:urunleriYenile,
                            child: Text(
                              '2',
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              padding: EdgeInsets.all(8),
                            ),
                            onPressed: urunleriYenile,
                            child: Icon(
                              Icons.arrow_forward_sharp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: SizedBox(
                      width: double.infinity,
                      //height: 202,
                      child: Card(
                        color: Colors.white,
                        child: Row(
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
}