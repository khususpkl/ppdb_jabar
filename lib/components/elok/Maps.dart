import 'package:flutter/material.dart';

class Maps extends StatelessWidget {
  const Maps({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double widht = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: widht * 0.9,
          // decoration: BoxDecoration(color: Colors.black),
          child: Image.asset('assets/image/maps.png'),
        ),
        Container(
          width: widht * 0.9,
          padding:
              EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 22, 167, 92),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: widht * 0.12,
                    height: widht * 0.08,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Maps',
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white)),
                    ),
                  ),
                  SizedBox(
                    width: widht * 0.01,
                  ),
                  SizedBox(
                    width: widht * 0.13,
                    height: widht * 0.08,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Satelit',
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white)),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: widht * 0.12,
                    height: widht * 0.08,
                    child: TextButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.zoom_out_map_sharp,
                        color: Colors.black,
                        size: 15,
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white)),
                    ),
                  ),
                  SizedBox(
                    width: widht * 0.01,
                  ),
                  SizedBox(
                    width: widht * 0.1,
                    height: widht * 0.07,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        '+',
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white)),
                    ),
                  ),
                  SizedBox(
                    width: widht * 0.01,
                  ),
                  SizedBox(
                    width: widht * 0.1,
                    height: widht * 0.07,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        '-',
                        style: TextStyle(color: Colors.black, fontSize: 11),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 360),
          child: Container(
            width: widht * 0.9,
            padding:
                EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 22, 167, 92),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: widht * 0.12,
                      height: widht * 0.08,
                      child: Text('')
                    ),
                    SizedBox(
                      width: widht * 0.01,
                    ),
                    SizedBox(
                      width: widht * 0.13,
                      height: widht * 0.08,
                      child: Text('')
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: widht * 0.12,
                      height: widht * 0.08,
                      child: Text(' ')
                    ),
                    SizedBox(
                      width: widht * 0.01,
                    ),
                    SizedBox(
                      width: widht * 0.1,
                      height: widht * 0.07,
                      child: Text('')
                    ),
                    SizedBox(
                      width: widht * 0.01,
                    ),
                    SizedBox(
                      width: widht * 0.1,
                      height: widht * 0.07,
                      child: Text('')
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
