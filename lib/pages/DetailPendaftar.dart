import 'package:flutter/material.dart';
import 'package:ppdb_jabar/components/Footer.dart';
import 'package:ppdb_jabar/components/app_bar.dart';
import 'package:ppdb_jabar/components/pendaftar/InformasiPendaftar.dart';
import 'package:ppdb_jabar/pages/informasi_sekolah.dart';
import 'package:ppdb_jabar/routes/routes.dart';

class DetailPendaftar extends StatefulWidget {
  const DetailPendaftar({super.key});
  static const String routeName = '/pendaftar';

  @override
  State<DetailPendaftar> createState() => _DetailPendaftarState();
}

class _DetailPendaftarState extends State<DetailPendaftar> {
  late ScrollController _scrollController;
  bool _showBackToTopButton = false;
  bool _isVisible = false;
  bool _navbarDropdown = false;

  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController.offset >= MediaQuery.of(context).size.height) {
            _showBackToTopButton = true;
          } else {
            _showBackToTopButton = false;
          }
        });
      });
    super.initState();
  }

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
            controller: _scrollController,
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: width,
                        height: height * 0.2,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 22, 167, 92),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Detail Pendaftar',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Ahmad Rivaiy',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: width,
                              height: 5,
                              decoration: BoxDecoration(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 70.0),
                      child: InformasiPendaftar(),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 70.0),
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
                      onTap: navbarDropdown,
                    ),
                    Stack(
                      children: [
                        Column(
                          children: [
                            ListTile(
                              title: Text(
                                'Profil PPDB',
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
                                Navigator.pushReplacementNamed(
                                    context, routes.elok);
                              },
                            ),
                            ListTile(
                              title: Text(
                                'Informasi Sekolah',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => InformasiSekolah(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        Visibility(
                          visible: _navbarDropdown,
                          child: Container(
                            decoration: BoxDecoration(color: Colors.white),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 25.0,
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                        width: 10,
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor: Color.fromARGB(
                                                255, 112, 205, 148),
                                            shape: const CircleBorder(),
                                          ),
                                          child: const Text(''),
                                          onPressed: () {},
                                        ),
                                      ),
                                      InkWell(
                                        child: Text(
                                          ' Jalur Pendaftaran PPDB SMA',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25.0, top: 10.0),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                        width: 10,
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor: Color.fromARGB(
                                                255, 112, 205, 148),
                                            shape: const CircleBorder(),
                                          ),
                                          child: const Text(''),
                                          onPressed: () {},
                                        ),
                                      ),
                                      InkWell(
                                        child: Text(
                                          ' Jalur Pendaftaran PPDB SMK',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25.0, top: 10.0, bottom: 5.0),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                        width: 10,
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor: Color.fromARGB(
                                                255, 112, 205, 148),
                                            shape: const CircleBorder(),
                                          ),
                                          child: const Text(''),
                                          onPressed: () {},
                                        ),
                                      ),
                                      InkWell(
                                        child: Text(
                                          ' Jalur Pendaftaran PPDB SLB',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: _showBackToTopButton == false
          ? null
          : FloatingActionButton(
              child: Icon(Icons.arrow_upward_rounded),
              backgroundColor: Color.fromRGBO(22, 167, 92, 1),
              onPressed: () {
                _scrollController.animateTo(0,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn);
              },
            ),
    );
  }
}
