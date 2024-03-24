import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maliyet_hesaplayici/pages/altigen.dart';
import 'package:maliyet_hesaplayici/pages/ana_menu.dart';
import 'package:maliyet_hesaplayici/pages/dortgen.dart';
import 'package:maliyet_hesaplayici/pages/gecmis.dart';
import 'package:maliyet_hesaplayici/pages/sekizgen.dart';
import 'package:maliyet_hesaplayici/pages/silindir.dart';
import 'package:maliyet_hesaplayici/providers/page_provider.dart';
import 'package:provider/provider.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  final List<Widget> _pages = [
    AnaMenu(),
    Gecmis(),
    Silindir(),
    Dortgen(),
    Altigen(),
    Sekizgen()
  ];

  final List _titles = [
    "İÇECEK KUTULARI",
    "CREDITS",
    "SİLİNDİR",
    "DÖRTGEN",
    "ALTIGEN",
    "SEKİZGEN",
  ];

  var anahtar = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: PopScope(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[850],
            title: Center(
              child: Text(
                _titles[context.watch<PageProvider>().page],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            leading: IconButton(
              onPressed: () {
                setState(() {
                  context.read<PageProvider>().changePage(newPage: 0);
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
                    context.read<PageProvider>().changePage(newPage: 1);
                  });
                },
                icon: Icon(
                  Icons.info_outline,
                  size: 35,
                  color: Colors.white,
                ),
              )
            ],
          ),
          body: _pages[context.watch<PageProvider>().page],
          backgroundColor: Colors.grey[400],
        ),
        canPop: context.watch<PageProvider>().page == 0,
        onPopInvoked: (didPop) {
          setState(() {
            context.read<PageProvider>().changePage(newPage: 0);
          });
        },
      ),
    );
  }
}
