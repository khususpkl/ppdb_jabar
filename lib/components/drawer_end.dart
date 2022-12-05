import 'package:flutter/material.dart';
import 'package:ppdb_jabar/routes/routes.dart';

class DrawerEnd extends StatelessWidget {
  const DrawerEnd({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 1,
                  // spreadRadius: -1,
                  offset: Offset(0, 2), // Shadow position
                ),
              ],
              image: DecorationImage(
                image: AssetImage('assets/image/disdikjabar.png'),
                scale: 7.0,
              ),
            ),
            child: Text(''),
          ),
          ListTile(
            title: const Text('Beranda'),
            onTap: () {
              Navigator.pushReplacementNamed(context, routes.home);
            },
          ),
          ListTile(
            title: const Text('Wilayah PPDB'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Jalur PPDB'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('E-Lok'),
            onTap: () {
              Navigator.pushReplacementNamed(context, routes.elok);
            },
          ),
        ],
      ),
    );
  }
}
