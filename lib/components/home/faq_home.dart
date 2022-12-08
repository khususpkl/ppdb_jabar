import 'package:flutter/material.dart';

class Faq_home extends StatefulWidget {
  const Faq_home({super.key});

  @override
  State<Faq_home> createState() => _Faq_homeState();
}

class _Faq_homeState extends State<Faq_home> {
  bool _isVisible = false;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 60)),
        Text(
          'Frequently Asked',
          style: TextStyle(
            color: Color.fromRGBO(6, 136, 139, 100),
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'Questions',
          style: TextStyle(
            color: Color.fromRGBO(84, 199, 201, 100),
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(0, 132, 68, 100),
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'PPDB',
                        style: TextStyle(
                          color: Color.fromRGBO(239, 212, 89, 100),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Zonasi',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 132, 68, 100),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Afirmasi',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 132, 68, 100),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Perpindahan \nTugas',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 132, 68, 100),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Rapor',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 132, 68, 100),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Prioritas \nTerdekat',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 132, 68, 100),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(230, 246, 236, 100),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                            width: 10,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor:
                                    Color.fromRGBO(239, 212, 89, 100),
                                shape: const CircleBorder(),
                              ),
                              child: const Text(''),
                              onPressed: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 3.0),
                            child: Text(
                              'Apa Saja Syarat Mengikuti PPDB ?',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          _isVisible
                              ? IconButton(
                                  onPressed: showToast,
                                  icon: Icon(Icons.arrow_drop_up))
                              : IconButton(
                                  onPressed: showToast,
                                  icon: Icon(Icons.arrow_drop_down))
                        ],
                      )
                    ],
                  ),
                ),
                Visibility(
                  visible: _isVisible,
                  child: Container(
                    width: width * 0.9,
                    padding: EdgeInsets.only(top: 20.0, bottom: 5.0),
                    child: Text(
                      'Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi  Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi  Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi  Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi  Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0, bottom: 50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                // width: widht * 0.4,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(230, 246, 236, 100),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Text(
                      'Lihat Semua ',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(
                        Icons.chevron_right,
                        size: 30.0,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
