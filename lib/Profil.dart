import 'package:flutter/material.dart';
import 'package:hayvan_dostu/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hayvan_dostu/UrunDetay.dart';
import 'package:hayvan_dostu/Sepet.dart';


class Profil extends StatefulWidget {
  String? kullanici;

  Profil({this.kullanici});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  String dropdownValue = 'Kedi';
  int mevcutresim=0;
  int mevcutresim2=1;
  int mevcutresim3=2;
  int hayvan=0;
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
  ];

  var UrunHayvan = ['Kedi', 'Köpek'];

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
    'Petlebi'
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

  @override
  Widget build(BuildContext context) {
    String baslik = 'Hayvan Dostu';
    if(dropdownValue=='Kedi'){
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
            ],
          ),
          body: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Icon(
                    Icons.account_circle_rounded,
                    size: 150,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    widget.kullanici.toString().toUpperCase(),
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Sahip olduğunuz hayvan: ',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.indigo,
                    ),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      dropdownColor: Colors.indigo,
                      borderRadius: BorderRadius.circular(25.0),
                      focusColor: Colors.transparent,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.indigo,
                      ),
                      elevation: 16,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                      underline: Container(
                        height: 2,
                        color: Colors.transparent,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>['Kedi', 'Köpek']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UrunDetay()),);
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
                                '${UrunKedi[mevcutresim]}',
                                width: 150,
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
                                      MaterialPageRoute(builder: (context) => UrunDetay(
                                        urunResim: UrunKedi[mevcutresim],
                                        urunAd: UrunAdKedi[mevcutresim],
                                        urunFiyat: UrunFiyatKedi[mevcutresim],
                                        urunAgirlik: UrunAgirlikKedi[mevcutresim],
                                        urunHayvan: UrunHayvan[hayvan],
                                        urunMarka: UrunMarkaKedi[mevcutresim],
                                      )),);
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
                                width: 150,
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
                                      MaterialPageRoute(builder: (context) => UrunDetay(
                                        urunResim: UrunKedi[mevcutresim2],
                                        urunAd: UrunAdKedi[mevcutresim2],
                                        urunFiyat: UrunFiyatKedi[mevcutresim2],
                                        urunAgirlik: UrunAgirlikKedi[mevcutresim2],
                                        urunHayvan: UrunHayvan[hayvan],
                                        urunMarka: UrunMarkaKedi[mevcutresim2],
                                      )),);
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
                                width: 150,
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
                                      MaterialPageRoute(builder: (context) => UrunDetay(
                                        urunResim: UrunKedi[mevcutresim3],
                                        urunAd: UrunAdKedi[mevcutresim3],
                                        urunFiyat: UrunFiyatKedi[mevcutresim3],
                                        urunAgirlik: UrunAgirlikKedi[mevcutresim3],
                                        urunHayvan: UrunHayvan[hayvan],
                                        urunMarka: UrunMarkaKedi[mevcutresim3],
                                      )),);
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
                  padding: const EdgeInsets.only(top: 80.0),
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
            ],
          ),
          body: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Icon(
                    Icons.account_circle_rounded,
                    size: 150,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    widget.kullanici.toString().toUpperCase(),
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Sahip olduğunuz hayvan: ',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.indigo,
                    ),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      dropdownColor: Colors.indigo,
                      borderRadius: BorderRadius.circular(25.0),
                      focusColor: Colors.transparent,
                      icon: const Icon(
                        Icons.arrow_downward,
                        color: Colors.indigo,
                      ),
                      elevation: 16,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                      underline: Container(
                        height: 2,
                        color: Colors.transparent,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>['Kedi', 'Köpek']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UrunDetay()),);
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
                                '${UrunKopek[mevcutresim]}',
                                width: 150,
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
                                      MaterialPageRoute(builder: (context) => UrunDetay(
                                        urunResim: UrunKopek[mevcutresim],
                                        urunAd: UrunAdKopek[mevcutresim],
                                        urunFiyat: UrunFiyatKopek[mevcutresim],
                                        urunAgirlik: UrunAgirlikKopek[mevcutresim],
                                        urunHayvan: UrunHayvan[hayvan],
                                        urunMarka: UrunMarkaKopek[mevcutresim],
                                      )),);
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
                                width: 150,
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
                                      MaterialPageRoute(builder: (context) => UrunDetay(
                                        urunResim: UrunKopek[mevcutresim2],
                                        urunAd: UrunAdKopek[mevcutresim2],
                                        urunFiyat: UrunFiyatKopek[mevcutresim2],
                                        urunAgirlik: UrunAgirlikKopek[mevcutresim2],
                                        urunHayvan: UrunHayvan[hayvan],
                                        urunMarka: UrunMarkaKopek[mevcutresim2],
                                      )),);
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
                                width: 150,
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
                                      MaterialPageRoute(builder: (context) => UrunDetay(
                                        urunResim: UrunKopek[mevcutresim3],
                                        urunAd: UrunAdKopek[mevcutresim3],
                                        urunFiyat: UrunFiyatKopek[mevcutresim3],
                                        urunAgirlik: UrunAgirlikKopek[mevcutresim3],
                                        urunHayvan: UrunHayvan[hayvan],
                                        urunMarka: UrunMarkaKopek[mevcutresim3],
                                      )),);
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
                  padding: const EdgeInsets.only(top: 80.0),
                  child: SizedBox(
                    width: double.infinity,
                    //height: 102,
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
