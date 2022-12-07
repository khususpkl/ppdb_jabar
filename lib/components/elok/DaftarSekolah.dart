import 'package:flutter/material.dart';

class DaftarSekolah extends StatelessWidget {
  const DaftarSekolah({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double widht = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Daftar Daftar',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 22, 167, 92),
                fontFamily: 'Poppins',
                fontSize: 24,
                fontWeight: FontWeight.w600),
          ),
          Text(
            'Sekolah',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 84, 199, 201),
                fontFamily: 'Poppins',
                fontSize: 24,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          SizedBox(
            width: widht * 0.8,
            child: Text(
              'Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi Ini Untuk Deskripsi',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontSize: 10,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
