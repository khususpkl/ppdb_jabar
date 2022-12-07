import 'package:flutter/material.dart';

class BarApp extends StatefulWidget {
  const BarApp({super.key});

  @override
  State<BarApp> createState() => _BarAppState();
}

class _BarAppState extends State<BarApp> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
