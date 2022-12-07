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
          Container(
            margin: EdgeInsets.only(top: 50.0),
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
        ],
      ),
    );
  }
}
