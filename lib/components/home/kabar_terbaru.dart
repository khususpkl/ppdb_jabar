import 'package:flutter/material.dart';

class KabarTerbaru extends StatelessWidget {
  const KabarTerbaru({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double widht = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Text(
          'Kabar Terbaru',
          style: TextStyle(
            color: Color.fromRGBO(6, 136, 139, 100),
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'PPDB',
          style: TextStyle(
            color: Color.fromRGBO(84, 199, 201, 100),
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        Container(
          width: widht * 0.7,
          child: Text(
            'Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 10,
                fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 60.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset('assets/image/alurSLB.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0, right: 60.0, top: 30.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 7,
                          width: 7,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor:
                                  Color.fromRGBO(112, 205, 148, 100),
                              shape: const CircleBorder(),
                            ),
                            child: const Text(''),
                            onPressed: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Row(
                            children: [
                              Text(
                                'Ini Untuk ',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(22, 167, 92, 100),
                                    fontFamily: 'Poppins'),
                              ),
                              Text(
                                'Judul Berita',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(144, 202, 249, 100),
                                    fontFamily: 'Poppins'),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: widht * 0.9,
                      child: Text(
                          'Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk '),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 60.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset('assets/image/alurSMA.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0, right: 60.0, top: 30.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 7,
                          width: 7,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor:
                                  Color.fromRGBO(112, 205, 148, 100),
                              shape: const CircleBorder(),
                            ),
                            child: const Text(''),
                            onPressed: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Row(
                            children: [
                              Text(
                                'Ini Untuk ',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(22, 167, 92, 100),
                                    fontFamily: 'Poppins'),
                              ),
                              Text(
                                'Judul Berita',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(144, 202, 249, 100),
                                    fontFamily: 'Poppins'),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: widht * 0.9,
                      child: Text(
                          'Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk '),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 60.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset('assets/image/alurSMK.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0, right: 60.0, top: 30.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 7,
                          width: 7,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor:
                                  Color.fromRGBO(112, 205, 148, 100),
                              shape: const CircleBorder(),
                            ),
                            child: const Text(''),
                            onPressed: () {},
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Row(
                            children: [
                              Text(
                                'Ini Untuk ',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(22, 167, 92, 100),
                                    fontFamily: 'Poppins'),
                              ),
                              Text(
                                'Judul Berita',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(144, 202, 249, 100),
                                    fontFamily: 'Poppins'),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: widht * 0.9,
                      child: Text(
                          'Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk '),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
