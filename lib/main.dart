import 'package:flutter/material.dart';
import 'package:maliyet_hesaplayici/ana_sayfa.dart';
import 'package:maliyet_hesaplayici/providers/input_provider.dart';
import 'package:maliyet_hesaplayici/providers/page_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => PageProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => InputProvider(),
      )
    ], child: AnaSayfa());
  }
}
