import 'package:flutter/material.dart';
import 'package:maliyet_hesaplayici/providers/input_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'dart:math';

class Hacim extends StatefulWidget {
  const Hacim({super.key});

  @override
  State<Hacim> createState() => _HacimState();
}

class _HacimState extends State<Hacim> {
  final _textController = TextEditingController();

  void hacim() {
    List<double> sonuclar = [];
    List<double> sonuclar2 = [];
    List<double> yaricaplar = [];
    List<double> yukseklikler = [];

    double volume = 600;
    var i = 0.0;
    var r = i;
    var h;
    var sonuc;
    for (i = 0; i < volume;) {
      i = i + 0.1;
      r = i;
      h = volume / (pi * r * r);
      sonuc = (2 * pi * r * r) + (2 * pi * h * r);
      sonuclar.add(sonuc);
      sonuclar2.add(sonuc);
      yaricaplar.add(r);
      yukseklikler.add(h);
    }
    sonuclar.sort();
    var min = sonuclar2.indexOf(sonuclar.first);
    print("En düşük yüzey alanı için yarıçap = ${yaricaplar[min]}");
    print("En düşük yüzey alanı için yükseklik = ${yukseklikler[min]}");
    print("En düşük yüzey alanı = ${sonuclar.first}");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            controller: _textController,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ], // Only numbers can be entered
            decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.black26),
                hintText: "İstediğiniz Hacim Değerini Giriniz",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: () {
                      _textController.clear();
                    },
                    icon: Icon(Icons.clear))),
          ),
        ),
        MaterialButton(
          onPressed: () {
            context
                .read<InputProvider>()
                .changeValue(newValue: _textController.text);
            hacim();
          },
          color: Colors.deepPurple[200],
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
              Icon(Icons.arrow_forward, color: Colors.white),
            ],
          ),
        )
      ],
    );
  }
}
