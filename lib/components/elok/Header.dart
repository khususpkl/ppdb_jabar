import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

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
            'E-Lokasi\nSekolah Merdeka Jabar Juara',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 24,
                fontWeight: FontWeight.w600),
          ),
          Container(
            child: Column(
              children: [
                Divider(
                  thickness: 3,
                  indent: 20,
                  endIndent: 20,
                  color: Color.fromRGBO(239, 212, 89, 100),
                  height: 50,
                ),
                Divider(
                  thickness: 3,
                  indent: 40,
                  endIndent: 40,
                  color: Color.fromRGBO(239, 212, 89, 100),
                  height: 5,
                ),
                Divider(
                  thickness: 3,
                  indent: 60,
                  endIndent: 60,
                  color: Color.fromRGBO(239, 212, 89, 100),
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
