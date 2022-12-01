import 'package:flutter/material.dart';
import 'package:ppdb_jabar/components/faq_home.dart';
import 'package:ppdb_jabar/components/intregrafis.dart';
import 'package:ppdb_jabar/components/kabar_terbaru.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double widht = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/image/pemprovjabar.png',
              scale: 25,
            ),
            Image.asset(
              'assets/image/disdikjabar.png',
              scale: 23,
            ),
            Image.asset(
              'assets/image/ppdb.png',
              scale: 4,
            ),
          ],
        ),
      ),
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
                        Container(
                          width: widht * 0.46,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.all(5.3)),
                              Text(
                                'Ayo Daftar PPDB 2023',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
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
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Text(
                    'Informasi Seputar',
                    style: TextStyle(
                        color: Color.fromRGBO(22, 167, 92, 100),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    'PPDB',
                    style: TextStyle(
                        color: Color.fromRGBO(84, 199, 201, 100),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins'),
                  ),
                  Container(
                    width: widht * 0.8,
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      'Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi',
                      style: TextStyle(
                          color: Color.fromRGBO(97, 97, 07, 100),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/image/ktp.png'),
                          Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                Text(
                                  'Identitas Kependudukan',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(255, 149, 0, 100),
                                      fontFamily: 'Poppins'),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: widht * 0.8,
                            padding: EdgeInsets.only(top: 10, bottom: 20),
                            child: Column(
                              children: [
                                Text(
                                  'Kartu Keluarga yang belum 1 tahun atau masih baru karena perubahan (kelahiran, meninggal, kepindahan) anggota keluarga dapat melampirkan surat keterangan dari RT/RW yang menerangkan lamanya domisili.',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins'),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 20),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Detail'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromRGBO(22, 167, 92, 100),
                                      shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(15),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Jalur Pendafataran
                      Column(
                        children: [
                          Image.asset('assets/image/jalur_daftar.png'),
                          Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                Text(
                                  'Afirmasi',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(255, 149, 0, 100),
                                      fontFamily: 'Poppins'),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: widht * 0.8,
                            padding: EdgeInsets.only(top: 10, bottom: 20),
                            child: Column(
                              children: [
                                Text(
                                  'KETM : Kartu penanggulangan kemiskinan/surat terdaftar pada DTKS/Surat keterangan tidak mampu dari kelurahan',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins'),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'Disabilitas : Hasil asesmen/diagnosa kekhususan oleh para ahli',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins'),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'Kondisi tertentu : Surat tugas atau surat keterangan korban bencana',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins'),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'Perpindahan tugas: Surat tugas',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins'),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'SLB : Hasil assessmen/diagnosa kekhususan oleh para ahli',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins'),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 20),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Detail'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromRGBO(22, 167, 92, 100),
                                      shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(15),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      // Jadwal Pendaftaran
                      Column(
                        children: [
                          Image.asset('assets/image/jadwal_daftar.png'),
                          Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                Text(
                                  'Prestasi',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(255, 149, 0, 100),
                                      fontFamily: 'Poppins'),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: widht * 0.8,
                            padding: EdgeInsets.only(top: 10, bottom: 20),
                            child: Column(
                              children: [
                                Text(
                                  'Rapor : Nilai Rapor Semestaer 1 - 5',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins'),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  'Kejuaraan : Sertifikat & Foto',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins'),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 20),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Detail'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromRGBO(22, 167, 92, 100),
                                      shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(15),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
