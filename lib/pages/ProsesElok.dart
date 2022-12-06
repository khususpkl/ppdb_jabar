import 'package:flutter/material.dart';
import 'package:ppdb_jabar/components/Footer.dart';
import 'package:ppdb_jabar/components/app_bar.dart';
import 'package:ppdb_jabar/components/drawer_end.dart';
import 'package:ppdb_jabar/components/elok/ContentProses.dart';
import 'package:ppdb_jabar/components/elok/FilterProses.dart';
import 'package:ppdb_jabar/components/elok/Header.dart';
import 'package:ppdb_jabar/components/elok/Maps.dart';
import 'package:ppdb_jabar/routes/routes.dart';

class Proses extends StatelessWidget {
  const Proses({super.key});
  static const String routeName = '/proses';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElokProses(),
    );
  }
}

class ElokProses extends StatefulWidget {
  const ElokProses({super.key});

  @override
  State<ElokProses> createState() => _ElokProsesState();
}

class _ElokProsesState extends State<ElokProses> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double widht = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: App_Bar(),
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              setState(() {
                Navigator.pushReplacementNamed(context, routes.elok);
              });
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
          ),
        ),
      ),
      drawer: DrawerEnd(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/bgProses.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomLeft,
                ),
              ),
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
                      child: ContentProses(),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25.0),
                      child: Maps(),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25.0),
                      child: FilterProses(),
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
