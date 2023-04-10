import 'package:flutter/material.dart';
import 'package:hayvan_dostu/AdresEkrani.dart';
import 'package:hayvan_dostu/UrunDetay.dart';
import 'package:hayvan_dostu/main.dart';
import 'package:hayvan_dostu/girisYap.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hayvan_dostu/Profil.dart';
import 'package:hayvan_dostu/Urunler.dart';

class Sepet extends StatefulWidget {
  String? kullanici;
  String? mevcutresim;
  String? urunad;
  String? urunfiyat;

  Sepet({this.kullanici, this.mevcutresim, this.urunad, this.urunfiyat});

  @override
  State<Sepet> createState() => _SepetState();
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

class _SepetState extends State<Sepet> {
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

  String baslik = 'Hayvan Dostu';
  int mevcutresim = 0;
  int mevcutresim2 = 1;
  int mevcutresim3 = 10;
  int mevcutresim4 = 8;
  int hayvan = 0;

  @override
  Widget build(BuildContext context) {
    if (widget.kullanici.hashCode == 0) {
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
            ],
          ),
          body: Container(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Icon(
                        Icons.shopping_basket_rounded,
                        color: Colors.indigo[500],
                        size: 50,
                      ),
                    ),
                    Text(
                      'Lütfen Önce Giriş Yapınız',
                      style: TextStyle(fontSize: 30),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blueAccent,
                          onPrimary: Colors.white,
                          padding: EdgeInsets.all(12),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => GirisYap()),
                          );
                        },
                        child: Text(
                          'Giriş',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    } else {
      if (widget.mevcutresim.hashCode == 0 ||
          widget.urunfiyat.hashCode == 0 ||
          widget.urunad.hashCode == 0) {
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
                Text('Hoşgeldiniz: ' +
                    widget.kullanici.toString().toUpperCase()),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HayvanDostu(
                            kullanici: widget.kullanici.toString(),
                          )),
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
            body: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Center(
                      child: Column(
                        children: [
                          Icon(
                            Icons.shopping_basket,
                            size: 50,
                          ),
                          Text(
                            'Sepetiniz boştur',
                            style: TextStyle(fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blueAccent,
                                onPrimary: Colors.white,
                                padding: EdgeInsets.all(12),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Urun(
                                        kullanici: widget.kullanici,
                                      )),
                                );
                              },
                              child: Text(
                                'Ürünlere Bak',
                                style: TextStyle(fontSize: 25),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UrunDetay()),
                        );
                      },
                      child: Text(
                        'Beğenebileceğiniz Ürünler',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Row(
                      children: [
                        Image.asset(
                          '${UrunResim[mevcutresim]}',
                          width: 90,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                            flex: 2,
                            child: Text('${UrunAd[mevcutresim]}',
                                style: TextStyle(fontSize: 18)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                              flex: 2,
                              child: Text('${UrunFiyat[mevcutresim]}',
                                  style: TextStyle(fontSize: 18))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 130.0),
                          child: Expanded(
                            flex: 3,
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
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Row(
                      children: [
                        Image.asset(
                          '${UrunResim[mevcutresim2]}',
                          width: 90,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                            flex: 2,
                            child: Text('${UrunAd[mevcutresim2]}',
                                style: TextStyle(fontSize: 18)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                              flex: 2,
                              child: Text('${UrunFiyat[mevcutresim2]}',
                                  style: TextStyle(fontSize: 18))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 130.0),
                          child: Expanded(
                            flex: 3,
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
                                      urunAgirlik: UrunAgirlik[mevcutresim2],
                                      urunHayvan: UrunHayvan[hayvan],
                                      urunMarka: UrunMarka[mevcutresim2],
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                'İncele',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Row(
                      children: [
                        Image.asset(
                          '${UrunResim[mevcutresim3]}',
                          width: 90,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                            flex: 2,
                            child: Text('${UrunAd[mevcutresim3]}',
                                style: TextStyle(fontSize: 18)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                              flex: 2,
                              child: Text('${UrunFiyat[mevcutresim3]}',
                                  style: TextStyle(fontSize: 18))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 130.0),
                          child: Expanded(
                            flex: 3,
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
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Row(
                      children: [
                        Image.asset(
                          '${UrunResim[mevcutresim4]}',
                          width: 90,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                            flex: 2,
                            child: Text('${UrunAd[mevcutresim4]}',
                                style: TextStyle(fontSize: 18)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                              flex: 2,
                              child: Text('${UrunFiyat[mevcutresim4]}',
                                  style: TextStyle(fontSize: 18))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 130.0),
                          child: Expanded(
                            flex: 3,
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
                                      urunAgirlik: UrunAgirlik[mevcutresim4],
                                      urunHayvan: UrunHayvan[hayvan],
                                      urunMarka: UrunMarka[mevcutresim4],
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                'İncele',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      } else {
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
                Text('Hoşgeldiniz: ' +
                    widget.kullanici.toString().toUpperCase()),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HayvanDostu(
                            kullanici: widget.kullanici.toString(),
                          )),
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
            body: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Text(
                      'Sepetinizdeki Ürünler',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Card(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.asset('${widget.mevcutresim}'),
                          ),
                          Expanded(
                            flex: 5,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    '${widget.urunad}',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    '${widget.urunfiyat}',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.cancel),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
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
                                            builder: (context) => Adres(kullanici: widget.kullanici,)),
                                      );
                                    },
                                    child: Text(
                                      'Ödemeye Git',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UrunDetay()),
                        );
                      },
                      child: Text(
                        'Beğenebileceğiniz Ürünler',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Row(
                      children: [
                        Image.asset(
                          '${UrunResim[mevcutresim]}',
                          width: 90,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                            flex: 2,
                            child: Text('${UrunAd[mevcutresim]}',
                                style: TextStyle(fontSize: 18)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                              flex: 2,
                              child: Text('${UrunFiyat[mevcutresim]}',
                                  style: TextStyle(fontSize: 18))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 130.0),
                          child: Expanded(
                            flex: 3,
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
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Row(
                      children: [
                        Image.asset(
                          '${UrunResim[mevcutresim2]}',
                          width: 90,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                            flex: 2,
                            child: Text('${UrunAd[mevcutresim2]}',
                                style: TextStyle(fontSize: 18)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                              flex: 2,
                              child: Text('${UrunFiyat[mevcutresim2]}',
                                  style: TextStyle(fontSize: 18))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 130.0),
                          child: Expanded(
                            flex: 3,
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
                                      urunAgirlik: UrunAgirlik[mevcutresim2],
                                      urunHayvan: UrunHayvan[hayvan],
                                      urunMarka: UrunMarka[mevcutresim2],
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                'İncele',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Row(
                      children: [
                        Image.asset(
                          '${UrunResim[mevcutresim3]}',
                          width: 90,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                            flex: 2,
                            child: Text('${UrunAd[mevcutresim3]}',
                                style: TextStyle(fontSize: 18)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                              flex: 2,
                              child: Text('${UrunFiyat[mevcutresim3]}',
                                  style: TextStyle(fontSize: 18))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 130.0),
                          child: Expanded(
                            flex: 3,
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
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Row(
                      children: [
                        Image.asset(
                          '${UrunResim[mevcutresim4]}',
                          width: 90,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                            flex: 2,
                            child: Text('${UrunAd[mevcutresim4]}',
                                style: TextStyle(fontSize: 18)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                              flex: 2,
                              child: Text('${UrunFiyat[mevcutresim4]}',
                                  style: TextStyle(fontSize: 18))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 130.0),
                          child: Expanded(
                            flex: 3,
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
                                      urunAgirlik: UrunAgirlik[mevcutresim4],
                                      urunHayvan: UrunHayvan[hayvan],
                                      urunMarka: UrunMarka[mevcutresim4],
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                'İncele',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
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
