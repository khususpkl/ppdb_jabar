import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Beranda(),
    );
  }
}

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/image/pemprovjabar.png',
                scale: 20,
              ),
              Image.asset(
                'assets/image/disdikjabar.png',
                scale: 19,
              ),
              Image.asset(
                'assets/image/ppdb.png',
                scale: 4,
              ),
            ],
          ),
        ),
      ),
      body: Container(
        height: 180,
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: ExactAssetImage('assets/image/bg_hero.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text('PPDB Jabar'),
            centerTitle: false,
          ),
        ),
      ),
    );
  }
}
