import 'package:flutter/material.dart';
import 'package:hayvan_dostu/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Iletisim extends StatefulWidget {
  String? kullanici;
  Iletisim({this.kullanici});

  @override
  State<Iletisim> createState() => _IletisimState();
}

class _IletisimState extends State<Iletisim> {


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

  @override
  Widget build(BuildContext context) {
    String baslik = 'Hayvan Dostu';
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
                  MaterialPageRoute(builder: (context) => HayvanDostu(kullanici: widget.kullanici,)),
                );
              },
              icon: Icon(
                Icons.home,
              ),
            ),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      'İletişim',
                      style:
                      TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              child: Text(
                                'Hayvan Dostu Ltd. Şti.',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              child: Text(
                                'Horoluhan Mah. Bğyğkşahin Cad. No:35/B Selçuklu/Konya',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Expanded(
                                  flex:2,
                                  child: Row(
                                    children: [
                                      Icon(Icons.phone),
                                      Text('05427839099'),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex:2,
                                  child: Row(
                                    children: [
                                      Icon(Icons.mail),
                                      Text('yigitkirpicik@gmail.com'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(),
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
