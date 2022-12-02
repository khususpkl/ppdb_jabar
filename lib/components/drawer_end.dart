import 'package:flutter/material.dart';

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
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Beranda'),
            onTap: () {},
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
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
