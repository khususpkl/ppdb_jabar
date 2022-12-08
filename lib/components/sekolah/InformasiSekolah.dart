import 'package:flutter/material.dart';

class InformasiSekolah extends StatelessWidget {
  const InformasiSekolah({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.all(width * 0.06),
      child: Container(
        margin: EdgeInsets.only(top: 20.0),
        padding: EdgeInsets.all(10.0),
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              spreadRadius: 1,
              offset: Offset(0, 3)
            )
          ]
        ),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 10,
                  width: 10,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 112, 205, 148),
                      shape: const CircleBorder(),
                    ),
                    child: const Text(''),
                    onPressed: () {},
                  ),
                ),
                Text(
                  ' Informasi Sekolah',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 149, 0),
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            ListTile(
              leading: Text(
                'Kode Sekolah :',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              title: Text(
                '232323232323232',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              leading: Text(
                'Status Sekolah :',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              title: Text(
                'Negri',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              leading: Text(
                'Nama Sekolah :',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              title: Text(
                'SMA NEGRI 1 BANDUNG',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              leading: Text(
                'Alamat Sekolah :',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              title: Text(
                'Jl. Ir. H. Juanda No.93, Lb. Siliwangi, Kecamatan Coblong, Kota Bandung, Jawa Barat 40132',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              leading: Text(
                'No.Telepon :',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              title: Text(
                '0221243134134',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            ListTile(
              leading: Text(
                'Koordinat :',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              title: Text(
                'Longitude :\n-6.895229\nLatitude :\n107.612821',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
