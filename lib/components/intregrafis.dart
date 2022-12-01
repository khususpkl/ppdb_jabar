import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Intregrafis extends StatelessWidget {
  const Intregrafis({super.key});

  @override
  Widget build(BuildContext context) {
    var sekolah = ['SLB', 'SMA', 'SMK'];
    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.65,
        autoPlay: false,
        enableInfiniteScroll: false,
      ),
      items: [
        'assets/image/alurSLB.png',
        'assets/image/alurSMA.png',
        'assets/image/alurSMK.png',
      ].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(color: Colors.white),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Image.asset(
                    'assets/image/disdikjabar.png',
                    scale: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset('$i'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0, top: 10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Alur PPDB ',
                              style: TextStyle(
                                  color: Color.fromRGBO(22, 167, 92, 100),
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            if (i == 'assets/image/alurSLB.png')
                              Text(
                                '${sekolah[0]}',
                                style: TextStyle(
                                    color: Color.fromRGBO(144, 202, 249, 100),
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            if (i == 'assets/image/alurSMA.png')
                              Text(
                                '${sekolah[1]}',
                                style: TextStyle(
                                    color: Color.fromRGBO(144, 202, 249, 100),
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            if (i == 'assets/image/alurSMK.png')
                              Text(
                                '${sekolah[2]}',
                                style: TextStyle(
                                    color: Color.fromRGBO(144, 202, 249, 100),
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              child: Text(
                                'Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk ',
                                style: TextStyle(
                                    color: Color.fromRGBO(97, 97, 97, 100),
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Selengkapnya',
                                style: TextStyle(fontSize: 10),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(22, 167, 92, 100),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
