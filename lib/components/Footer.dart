import 'package:flutter/material.dart';
// import 'package:ppdb_jabar/custom_icons.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(
                image: AssetImage('assets/image/ppdb.png'),
                width: 60,
                height: 60,
              ),
              Text(
                'Dinas Pendidikan\nProvinsi Jawa Barat',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              // Container(
              //   padding: EdgeInsets.all(10.0),
              //   decoration: BoxDecoration(
              //       color: Colors.green,
              //       borderRadius: BorderRadius.circular(100)),
              //   child: Icon(
              //     Icons.arrow_upward,
              //     color: Colors.white,
              //   ),
              // )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 7,
                      width: 7,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color.fromRGBO(239, 212, 89, 100),
                          shape: const CircleBorder(),
                        ),
                        child: const Text(''),
                        onPressed: () {},
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'About',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontFamily: 'Poppins'),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 7,
                      width: 7,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color.fromRGBO(239, 212, 89, 100),
                          shape: const CircleBorder(),
                        ),
                        child: const Text(''),
                        onPressed: () {},
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Partner',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontFamily: 'Poppins'),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 7,
                      width: 7,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color.fromRGBO(239, 212, 89, 100),
                          shape: const CircleBorder(),
                        ),
                        child: const Text(''),
                        onPressed: () {},
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Contact',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontFamily: 'Poppins'),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Text(
              'Social Media',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/image/fb.png'),
                  Image.asset('assets/image/twit.png'),
                  Image.asset('assets/image/yt.png'),
                  Image.asset('assets/image/ig.png',
                  scale: 19,),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: Text(
                '© 2022 - Dinas Pendidikan Provinsi Jawa Barat',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.w400
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
