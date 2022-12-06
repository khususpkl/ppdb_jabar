import 'package:flutter/material.dart';
import 'package:ppdb_jabar/pages/HomePage.dart';
import 'package:ppdb_jabar/pages/Elok.dart';
import 'package:ppdb_jabar/pages/ProsesElok.dart';
import 'package:ppdb_jabar/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Beranda(),
      routes: {
        routes.home: (context) => Beranda(),
        routes.elok: (context) => Elok(),
        routes.proses: (context) => Proses(),
      },
    );
  }
}
