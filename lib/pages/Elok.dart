// import 'package:crud_image/components/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:ppdb_jabar/components/app_bar.dart';

class Elok extends StatefulWidget {
  const Elok({super.key});
  static const String routeName = '/elok';

  @override
  State<Elok> createState() => _ElokState();
}

class _ElokState extends State<Elok> {
  bool _isVisible = true;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: BarApp(),
        actions: [
          Builder(
            builder: (context) => IconButton(
              onPressed: () {
                setState(() {
                  showToast();
                });
              },
              icon: Icon(Icons.menu),
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: width * 0.5,
                height: height * 0.2,
                decoration: BoxDecoration(color: Colors.green),
              ),
              Container(
                width: width * 0.5,
                height: height * 0.2,
                decoration: BoxDecoration(color: Colors.green),
              ),
              Container(
                width: width * 0.5,
                height: height * 0.2,
                decoration: BoxDecoration(color: Colors.green),
              ),
            ],
          ),
          Visibility(
            visible: _isVisible,
            child: Container(
                width: width,
                decoration: BoxDecoration(color: Colors.blue),
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Beranda'),
                    ),
                    ListTile(
                      title: Text('E-Lok'),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
