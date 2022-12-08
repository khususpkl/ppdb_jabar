// import 'package:crud_image/components/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:ppdb_jabar/components/Footer.dart';
import 'package:ppdb_jabar/components/app_bar.dart';
import 'package:ppdb_jabar/components/elok/ContentProses.dart';
import 'package:ppdb_jabar/components/elok/DaftarSekolah.dart';
import 'package:ppdb_jabar/components/elok/FilterProses.dart';
import 'package:ppdb_jabar/components/elok/Header.dart';
import 'package:ppdb_jabar/components/elok/Card.dart';
import 'package:ppdb_jabar/components/elok/Maps.dart';
import 'package:ppdb_jabar/routes/routes.dart';

class Elok extends StatefulWidget {
  const Elok({super.key});
  static const String routeName = '/elok';

  @override
  State<Elok> createState() => _ElokState();
}

class _ElokState extends State<Elok> {
  bool _isVisible = false;
  bool _navbarDropdown = false;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void navbarDropdown() {
    setState(() {
      _navbarDropdown = !_navbarDropdown;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: BarApp(),
        actions: [
          !_isVisible
              ? Builder(
                  builder: (context) => IconButton(
                    onPressed: () {
                      setState(() {
                        showToast();
                      });
                    },
                    icon: Icon(Icons.menu),
                    color: Colors.black,
                    iconSize: 30,
                  ),
                )
              : Builder(
                  builder: (context) => IconButton(
                    onPressed: () {
                      setState(() {
                        showToast();
                      });
                    },
                    icon: Icon(Icons.close_rounded),
                    color: Colors.black,
                    iconSize: 30,
                  ),
                ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                // Padding(padding: EdgeInsets.all(5.0)),
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/image/bgProses.png'),
                          fit: BoxFit.cover)),
                  child: Column(
                    children: [
                      Container(
                        child: Header(),
                      ),
                      Container(
                        child: ContentProses(),
                      ),
                      Container(
                        child: CardElok(),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  child: Maps(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  child: FilterProses(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  child: DaftarSekolah(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  child: Footer(),
                ),
              ],
            ),
          ),
          Visibility(
            visible: _isVisible,
            child: Container(
              width: width,
              height: height * 0.25,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15,
                    offset: Offset(0, 2),
                  )
                ],
              ),
              padding: EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Beranda',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, routes.home);
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Wilayah PPDB',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Jalur PPDB',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          !_navbarDropdown ? Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 30,
                          ) : Icon(
                            Icons.keyboard_arrow_up_rounded,
                            size: 30,
                          )
                        ],
                      ),
                      subtitle: Visibility(
                        visible: _navbarDropdown,
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                'Jalur Pendaftaran PPDB SMA',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                'Jalur Pendaftaran PPDB SMK',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(
                                'Jalur Pendaftaran PPDB SLB',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              onTap: () {},
                            )
                          ],
                        ),
                      ),
                      onTap: navbarDropdown,
                    ),
                    ListTile(
                      title: Text(
                        'Profile',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'Pengaduan',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        'E-Location',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
