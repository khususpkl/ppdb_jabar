import 'package:flutter/material.dart';
import 'package:ppdb_jabar/components/Footer.dart';
import 'package:ppdb_jabar/components/app_bar.dart';
import 'package:ppdb_jabar/components/drawer_end.dart';
import 'package:ppdb_jabar/components/elok/Content.dart';
import 'package:ppdb_jabar/components/elok/Header.dart';

class Elok extends StatelessWidget {
  const Elok({super.key});
  static const String routeName = '/elok';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double widht = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: App_Bar(),
        actions: [
          Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: Icon(Icons.menu),
              color: Color.fromRGBO(22, 167, 92, 100),
            ),
          ),
        ],
      ),
      endDrawer: DrawerEnd(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 1.25,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image/bgElok.png'),
                      fit: BoxFit.cover,
                      alignment: Alignment.bottomCenter)),
              child: Container(
                width: widht,
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                      child: Header(),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25.0),
                      child: Content(),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Footer(),
            )
          ],
        ),
      ),
    );
  }
}
