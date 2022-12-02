import 'package:flutter/material.dart';
import 'package:ppdb_jabar/components/Footer.dart';
import 'package:ppdb_jabar/components/app_bar.dart';
import 'package:ppdb_jabar/components/drawer_end.dart';
import 'package:ppdb_jabar/components/home/faq_home.dart';
import 'package:ppdb_jabar/components/home/informasi_ppdb.dart';
import 'package:ppdb_jabar/components/home/intregrafis.dart';
import 'package:ppdb_jabar/components/home/kabar_terbaru.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

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
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
            color: Colors.black,
          ),
        ),
      ),
      drawer: DrawerEnd(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                // padding: EdgeInsets.only(top: 10),
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20),
                width: widht * 0.9,
                height: height * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/image/bg_hero.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'PPDB',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'SLB - SMA - SMK',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Sekolah Merdeka Jabar Juara',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 3.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            height: 30,
                            child: Row(
                              children: [
                                Text(
                                  'Ayo Daftar PPDB 2023',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.green),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                  ),
                                  child: Text(
                                    'Daftar',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 8,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Informasi_ppdb(),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(bottom: 20)),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Intrografis',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color.fromRGBO(144, 202, 249, 100)),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Video',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color.fromRGBO(22, 167, 92, 100)),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[Intregrafis()],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20.0),
                      child: KabarTerbaru(),
                    ),
                  ],
                ),
              ),
              Container(
                child: Faq_Home(),
              ),
              Container(
                child: Footer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
