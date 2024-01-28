import 'package:flutter/material.dart';
import 'package:maliyet_hesaplayici/pages/ana_menu.dart';
import 'package:maliyet_hesaplayici/pages/gecmis.dart';

void setPage() {}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int selectedpage = 0;

  final List<Widget> _pages = [
    AnaMenu(),
    Gecmis(),
  ];

  final List _titles = [
    "ANA SAYFA",
    "GEÇMİŞ",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[400],
          title: Center(
            child: Text(
              _titles[selectedpage],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          leading: IconButton(
            onPressed: () {
              setState(() {
                selectedpage = 0;
              });
            },
            icon: Icon(
              Icons.home_outlined,
              size: 35,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  selectedpage = 1;
                });
              },
              icon: Icon(
                Icons.history,
                size: 35,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: _pages[selectedpage],
        backgroundColor: Colors.white,
      ),
      routes: {
        "/geçmiş": (context) => const Gecmis(),
      },
    );
  }
}
