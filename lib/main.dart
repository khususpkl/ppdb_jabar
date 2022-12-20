import 'package:flutter/material.dart';
import 'package:ppdb_jabar/pages/HomePage.dart';
import 'package:ppdb_jabar/pages/Elok.dart';
import 'package:ppdb_jabar/pages/ProsesElok.dart';
import 'package:ppdb_jabar/pages/DetailSekolah.dart';
import 'package:ppdb_jabar/pages/DetailPendaftar.dart';
import 'package:ppdb_jabar/pages/informasi_sekolah.dart';
import 'package:ppdb_jabar/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PPDB Jabar 2023',
      // debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        routes.home: (context) => HomePage(),
        routes.elok: (context) => Elok(),
        routes.proses: (context) => Proses(),
        routes.detail: (context) => DetailSekolah(),
        routes.pendaftar: (context) => DetailPendaftar(),
        routes.informasiSekolah: (context) => InformasiSekolah(),
      },
    );
  }
}
