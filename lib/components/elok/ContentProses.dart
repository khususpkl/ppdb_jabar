import 'package:flutter/material.dart';
import 'package:ppdb_jabar/routes/routes.dart';

class ContentProses extends StatelessWidget {
  const ContentProses({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double widht = MediaQuery.of(context).size.width;
    return Container(alignment: Alignment.center, child: ProsesContent());
  }
}

class ProsesContent extends StatefulWidget {
  const ProsesContent({super.key});

  @override
  State<ProsesContent> createState() => _ProsesContentState();
}

class _ProsesContentState extends State<ProsesContent> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double widht = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Text(
              'SMAN 1 BANDUNG / 20219271 / SMA / NEGERI',
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Text(
              'Jl. Ir. H. Juanda No.93, Lb. Siliwangi, Kecamatan Coblong, Kota Bandung, Jawa Barat 40132',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Calon Lulusan :',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '350',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.yellow,
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              width: widht * 0.8,
              decoration: BoxDecoration(
                color: Color.fromRGBO(22, 167, 92, 2),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 7,
                                      width: 7,
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor:
                                              Color.fromRGBO(239, 212, 89, 1),
                                          shape: const CircleBorder(),
                                        ),
                                        child: const Text(''),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Text(
                                      ' Lulusan SMP',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Color.fromRGBO(66, 165, 245, 1),
                                    ),
                                    Text(
                                      '(192)',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 7,
                                        width: 7,
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor:
                                                Color.fromRGBO(239, 212, 89, 1),
                                            shape: const CircleBorder(),
                                          ),
                                          child: const Text(''),
                                          onPressed: () {},
                                        ),
                                      ),
                                      Text(
                                        ' Negeri',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 7,
                                        width: 7,
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor:
                                                Color.fromRGBO(239, 212, 89, 1),
                                            shape: const CircleBorder(),
                                          ),
                                          child: const Text(''),
                                          onPressed: () {},
                                        ),
                                      ),
                                      Text(
                                        ' Swasta',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0, bottom: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '11,197',
                                    style: TextStyle(
                                      color: Color.fromRGBO(239, 212, 89, 1),
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '13,890',
                                    style: TextStyle(
                                      color: Color.fromRGBO(239, 212, 89, 1),
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: widht,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 132, 68, 2),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 15.0),
                              child: Text(
                                'Jumlah',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, bottom: 5.0),
                              child: Text(
                                '25,087',
                                style: TextStyle(
                                  color: Color.fromRGBO(239, 212, 89, 1),
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Container(
              width: widht * 0.8,
              decoration: BoxDecoration(
                color: Color.fromRGBO(22, 167, 92, 2),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 7,
                                      width: 7,
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor:
                                              Color.fromRGBO(239, 212, 89, 1),
                                          shape: const CircleBorder(),
                                        ),
                                        child: const Text(''),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Text(
                                      ' Daya Tampung SMA',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Color.fromRGBO(66, 165, 245, 1),
                                    ),
                                    Text(
                                      '(104)',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 7,
                                        width: 7,
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor:
                                                Color.fromRGBO(239, 212, 89, 1),
                                            shape: const CircleBorder(),
                                          ),
                                          child: const Text(''),
                                          onPressed: () {},
                                        ),
                                      ),
                                      Text(
                                        ' Negeri',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 7,
                                        width: 7,
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor:
                                                Color.fromRGBO(239, 212, 89, 1),
                                            shape: const CircleBorder(),
                                          ),
                                          child: const Text(''),
                                          onPressed: () {},
                                        ),
                                      ),
                                      Text(
                                        ' Swasta',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0, bottom: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '6,349',
                                    style: TextStyle(
                                      color: Color.fromRGBO(239, 212, 89, 1),
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '8,102',
                                    style: TextStyle(
                                      color: Color.fromRGBO(239, 212, 89, 1),
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: widht,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 132, 68, 2),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 15.0),
                              child: Text(
                                'Jumlah',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, bottom: 5.0),
                              child: Text(
                                '14,451',
                                style: TextStyle(
                                  color: Color.fromRGBO(239, 212, 89, 1),
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Container(
              width: widht * 0.8,
              decoration: BoxDecoration(
                color: Color.fromRGBO(22, 167, 92, 2),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 7,
                                      width: 7,
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor:
                                              Color.fromRGBO(239, 212, 89, 1),
                                          shape: const CircleBorder(),
                                        ),
                                        child: const Text(''),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Text(
                                      ' Daya Tampung SMA',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Color.fromRGBO(66, 165, 245, 1),
                                    ),
                                    Text(
                                      '(104)',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 7,
                                        width: 7,
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor:
                                                Color.fromRGBO(239, 212, 89, 1),
                                            shape: const CircleBorder(),
                                          ),
                                          child: const Text(''),
                                          onPressed: () {},
                                        ),
                                      ),
                                      Text(
                                        ' Negeri',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 7,
                                        width: 7,
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor:
                                                Color.fromRGBO(239, 212, 89, 1),
                                            shape: const CircleBorder(),
                                          ),
                                          child: const Text(''),
                                          onPressed: () {},
                                        ),
                                      ),
                                      Text(
                                        ' Swasta',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0, bottom: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '6,349',
                                    style: TextStyle(
                                      color: Color.fromRGBO(239, 212, 89, 1),
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '8,102',
                                    style: TextStyle(
                                      color: Color.fromRGBO(239, 212, 89, 1),
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: widht,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 132, 68, 2),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 5.0, bottom: 15.0),
                              child: Text(
                                'Jumlah',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, bottom: 5.0),
                              child: Text(
                                '14,451',
                                style: TextStyle(
                                  color: Color.fromRGBO(239, 212, 89, 1),
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Container(
              width: widht * 0.8,
              decoration: BoxDecoration(
                color: Color.fromRGBO(22, 167, 92, 2),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 7,
                                      width: 7,
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor:
                                              Color.fromRGBO(239, 212, 89, 1),
                                          shape: const CircleBorder(),
                                        ),
                                        child: const Text(''),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Container(
                                      width: widht * 0.6,
                                      child: Text(
                                        ' Maka Lulusan SMP Yang Dapat Tertampung Pada Sekolah Negri (SMA/SMK) :',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(50.0),
                              child: Text(
                                '14,451',
                                style: TextStyle(
                                  color: Color.fromRGBO(239, 212, 89, 1),
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10.0),
                        width: widht,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 132, 68, 2),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 7,
                                      width: 7,
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor:
                                              Color.fromRGBO(239, 212, 89, 1),
                                          shape: const CircleBorder(),
                                        ),
                                        child: const Text(''),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Container(
                                      width: widht * 0.6,
                                      child: Text(
                                        ' Asumsi Berdasarkan Jumlah Rombel Lulusan SMA/SMK NEGRI :',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(50.0),
                              child: Text(
                                '(15 Rombel X 36 Maksimal Jumlah Peserta Didik Per-Rombel) = 540',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
