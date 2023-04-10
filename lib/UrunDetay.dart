import 'package:flutter/material.dart';
import 'package:hayvan_dostu/main.dart';
import 'package:hayvan_dostu/Sepet.dart';
import 'package:hayvan_dostu/girisYap.dart';
import 'package:hayvan_dostu/Profil.dart';


class UrunDetay extends StatefulWidget {
  String? kullanici;
  String? urunResim;
  String? urunAd;
  String? urunFiyat;
  String? urunMarka;
  String? urunHayvan;
  String? urunAgirlik;
  UrunDetay({this.kullanici,this.urunAd,this.urunFiyat,this.urunAgirlik,this.urunHayvan,this.urunMarka,this.urunResim});

  @override
  State<UrunDetay> createState() => _UrunDetayState();
}

class _UrunDetayState extends State<UrunDetay> {
  @override
  Widget build(BuildContext context) {
    String baslik = 'Hayvan Dostu';
    if(widget.kullanici.hashCode==0){
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
                onPressed: (){
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
                    MaterialPageRoute(builder: (context) => Sepet()),
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
                  child: Image.asset(
                    '${widget.urunResim}',
                    width: 200,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Ürün Özellikleri',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Expanded(
                                    flex:2,
                                    child: Text(
                                      'Ürün Adı: ',
                                      style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Expanded(
                                    flex:4,
                                    child: Text(
                                      '${widget.urunAd}',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Expanded(
                                    flex:2,
                                    child: Text(
                                      'Hangi hayvanlar için uygun:  ',
                                      style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Expanded(
                                    flex:4,
                                    child: Text(
                                      '${widget.urunHayvan}',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Expanded(
                                    flex:2,
                                    child: Text(
                                      'Marka: ',
                                      style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Expanded(
                                    flex:4,
                                    child: Text(
                                      '${widget.urunMarka}',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Expanded(
                                    flex:2,
                                    child: Text(
                                      'Ağırlık:  ',
                                      style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Expanded(
                                    flex:4,
                                    child: Text(
                                      '${widget.urunAgirlik}',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Expanded(
                                    flex: 2,
                                    child: Text(
                                      'Fiyat:${widget.urunFiyat} ',
                                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Padding(
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
                                              builder: (context) => Sepet()),
                                        );
                                      },
                                      child: Text(
                                        'Hemen Al',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ],
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
                  child: Image.asset(
                    '${widget.urunResim}',
                    width: 200,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Ürün Özellikleri',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Expanded(
                                    flex:2,
                                    child: Text(
                                      'Ürün Adı: ',
                                      style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Expanded(
                                    flex:4,
                                    child: Text(
                                      '${widget.urunAd}',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Expanded(
                                    flex:2,
                                    child: Text(
                                      'Hangi hayvanlar için uygun:  ',
                                      style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Expanded(
                                    flex:4,
                                    child: Text(
                                      '${widget.urunHayvan}',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Expanded(
                                    flex:2,
                                    child: Text(
                                      'Marka: ',
                                      style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Expanded(
                                    flex:4,
                                    child: Text(
                                      '${widget.urunMarka}',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Expanded(
                                    flex:2,
                                    child: Text(
                                      'Ağırlık:  ',
                                      style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Expanded(
                                    flex:4,
                                    child: Text(
                                      '${widget.urunAgirlik}',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Expanded(
                                    flex: 2,
                                    child: Text(
                                      'Fiyat:${widget.urunFiyat} ',
                                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Padding(
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
                                              builder: (context) => Sepet(kullanici: widget.kullanici,mevcutresim: widget.urunResim,urunfiyat: widget.urunFiyat,urunad: widget.urunAd,)),
                                        );
                                      },
                                      child: Text(
                                        'Hemen Al',
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
