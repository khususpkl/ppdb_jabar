import 'package:flutter/material.dart';
import 'package:ppdb_jabar/components/Footer.dart';
import 'package:ppdb_jabar/components/app_bar.dart';
import 'package:ppdb_jabar/routes/routes.dart';
// Di Atas Component Wajib
import 'package:ppdb_jabar/components/home/faq_home.dart';
import 'package:ppdb_jabar/components/home/informasi_ppdb.dart';
import 'package:ppdb_jabar/components/home/intregrafis.dart';
import 'package:ppdb_jabar/components/home/kabar_terbaru.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String routeName = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                Padding(padding: EdgeInsets.only(top: 10)),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 20),
                  width: width * 0.9,
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
                  child: Faq_home(),
                ),
                Container(
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
                      onTap: () {},
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
                      title: Column(
                        children: [
                          Row(
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
                              !_navbarDropdown
                                  ? Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      size: 30,
                                    )
                                  : Icon(
                                      Icons.keyboard_arrow_up_rounded,
                                      size: 30,
                                    )
                            ],
                          ),
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
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, routes.elok);
                              },
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
                      onTap: () {
                        Navigator.pushReplacementNamed(context, routes.elok);
                      },
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
