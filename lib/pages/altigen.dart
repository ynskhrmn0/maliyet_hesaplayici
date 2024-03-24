import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/services.dart';

class Altigen extends StatefulWidget {
  const Altigen({super.key});

  @override
  State<Altigen> createState() => _AltigenState();
}

class _AltigenState extends State<Altigen> {
  var kenar = "0";
  var yukseklik = "0";
  var yuzey_alani = "0";
  var kagit = "0";
  var plastik = "0";
  var metal = "0";

  void hacim(int volume) {
    List<double> sonuclar = [];
    List<double> sonuclar2 = [];
    List<double> kenarlar = [];
    List<double> yukseklikler = [];

    var i = 0.0;
    var a = i;
    var h;
    var sonuc;

    for (i = 0; i < volume;) {
      i = i + 0.1;
      a = i;
      h = (4 * volume) / (3 * a * a * sqrt(3));
      sonuc = 3 * ((a * a * sqrt(3)) + (2 * a * h));
      sonuclar.add(sonuc);
      sonuclar2.add(sonuc);
      kenarlar.add(a);
      yukseklikler.add(h);
    }
    sonuclar.sort();
    if (int.parse(_textController.text) == 0) {
      uyari = "Lütfen 0'dan farklı bir sayı giriniz!";
      renk = Colors.redAccent[700]!;
      _textController.clear();
    } else {
      var min = sonuclar2.indexOf(sonuclar.first);
      kenar = (kenarlar[min]).toStringAsFixed(3);
      yukseklik = (yukseklikler[min]).toStringAsFixed(3);
      yuzey_alani = (sonuclar.first).toStringAsFixed(3);
      kagit = ((sonuclar.first / 20) * 0.00311).toStringAsFixed(3);
      plastik = (((sonuclar.first / 20) * 1.3) * 0.05).toStringAsFixed(3);
      metal = (((sonuclar.first / 20) * 7.28) * 0.00305).toStringAsFixed(3);
    }
  }

  String uyari = "İstediğiniz Hacim Değerini Giriniz";
  var renk = Colors.black26;

  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextField(
                    textInputAction: TextInputAction.done,
                    onSubmitted: (value) {
                      setState(() {
                        if (_textController.text == "") {
                          uyari = "Lütfen geçerli bir sayı giriniz!";
                          renk = Colors.redAccent[700]!;
                        } else {
                          uyari = "İstediğiniz Hacim Değerini Giriniz";
                          renk = Colors.black26;
                          hacim(int.parse(_textController.text));
                        }
                      });
                    },
                    maxLength: 5,
                    controller: _textController,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ], // Only numbers can be entered
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: renk),
                        hintText: uyari,
                        filled: true,
                        fillColor: Colors.grey[200],
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.blueGrey),
                        ),
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: () {
                              _textController.clear();
                              setState(() {
                                renk = Colors.grey;
                                uyari = "İstediğiniz Hacim Değerini Giriniz";
                              });
                            },
                            icon: Icon(Icons.clear))),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      if (_textController.text == "") {
                        uyari = "Lütfen geçerli bir sayı giriniz!";
                        renk = Colors.redAccent[700]!;
                      } else {
                        uyari = "İstediğiniz Hacim Değerini Giriniz";
                        renk = Colors.black26;
                        hacim(int.parse(_textController.text));
                      }
                    });
                  },
                  color: Colors.blueGrey[800],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text(
                          "HESAPLA",
                          softWrap: true,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Icon(Icons.calculate_outlined, color: Colors.white),
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 7, vertical: 10),
              height: 200,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      color: Colors.black26,
                      blurRadius: 5.0,
                      spreadRadius: 0.9,
                    ),
                  ],
                  color: Colors.blueGrey[600],
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Min Yüzey Alanı",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Kenar Uzunluğu = $kenar cm",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                      softWrap: true,
                    ),
                    Text(
                      "Yüksekliği = $yukseklik cm",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                      softWrap: true,
                    ),
                    Text(
                      "Yüzey Alanı = $yuzey_alani cm²",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                      softWrap: true,
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 7, vertical: 10),
              height: 100,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      color: Colors.black26,
                      blurRadius: 5.0,
                      spreadRadius: 0.9,
                    ),
                  ],
                  color: Colors.blueGrey[600],
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Karton Kağıt Maliyeti: $kagit TL",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 7, vertical: 10),
              height: 100,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      color: Colors.black26,
                      blurRadius: 5.0,
                      spreadRadius: 0.9,
                    ),
                  ],
                  color: Colors.blueGrey[600],
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Plastik Maliyeti: $plastik TL",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 7, vertical: 10),
              height: 100,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      color: Colors.black26,
                      blurRadius: 5.0,
                      spreadRadius: 0.9,
                    ),
                  ],
                  color: Colors.blueGrey[600],
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Metal Maliyeti: $metal TL",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
