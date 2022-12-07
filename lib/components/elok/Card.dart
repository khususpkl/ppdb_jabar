import 'package:flutter/material.dart';

class CardElok extends StatelessWidget {
  const CardElok({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double widht = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 30.0),
          child: Stack(
            children: [
              Container(
                width: widht * 0.8,
                padding: EdgeInsets.only(top: 135.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 132, 68),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text(
                      'Jumlah',
                      style: TextStyle(
                        height: 5.0,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '25,087',
                      style: TextStyle(
                        height: 3.5,
                        color: Color.fromARGB(255, 239, 212, 89),
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: widht * 0.8,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 22, 167, 92),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 15,
                      spreadRadius: 1,
                      offset: Offset(0, 15),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 7,
                                width: 7,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 239, 212, 89),
                                    shape: const CircleBorder(),
                                  ),
                                  child: const Text(''),
                                  onPressed: () {},
                                ),
                              ),
                              Text(
                                ' Lulusan SMP',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Color.fromARGB(255, 66, 165, 245),
                              ),
                              Text(
                                '(192)',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(top: 15.0, right: 40.0, left: 40.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 7,
                                width: 7,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 239, 212, 89),
                                    shape: const CircleBorder(),
                                  ),
                                  child: const Text(''),
                                  onPressed: () {},
                                ),
                              ),
                              Text(
                                ' Negri',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 7,
                                width: 7,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 239, 212, 89),
                                    shape: const CircleBorder(),
                                  ),
                                  child: const Text(''),
                                  onPressed: () {},
                                ),
                              ),
                              Text(
                                ' Swasta',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        right: 60.0,
                        left: 60.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '11,197',
                            style: TextStyle(
                              height: 5.0,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 239, 212, 89),
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Text(
                            '13,890',
                            style: TextStyle(
                              height: 5.0,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 239, 212, 89),
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30.0),
          child: Stack(
            children: [
              Container(
                width: widht * 0.8,
                padding: EdgeInsets.only(top: 135.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 132, 68),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text(
                      'Jumlah',
                      style: TextStyle(
                        height: 5.0,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '14,451',
                      style: TextStyle(
                        height: 3.5,
                        color: Color.fromARGB(255, 239, 212, 89),
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: widht * 0.8,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 22, 167, 92),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 15,
                      spreadRadius: 1,
                      offset: Offset(0, 15),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 7,
                                width: 7,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 239, 212, 89),
                                    shape: const CircleBorder(),
                                  ),
                                  child: const Text(''),
                                  onPressed: () {},
                                ),
                              ),
                              Text(
                                ' Daya Tampung SMA',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Color.fromARGB(255, 66, 165, 245),
                              ),
                              Text(
                                '(104)',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(top: 15.0, right: 40.0, left: 40.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 7,
                                width: 7,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 239, 212, 89),
                                    shape: const CircleBorder(),
                                  ),
                                  child: const Text(''),
                                  onPressed: () {},
                                ),
                              ),
                              Text(
                                ' Negri',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 7,
                                width: 7,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 239, 212, 89),
                                    shape: const CircleBorder(),
                                  ),
                                  child: const Text(''),
                                  onPressed: () {},
                                ),
                              ),
                              Text(
                                ' Swasta',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        right: 60.0,
                        left: 60.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '6,349',
                            style: TextStyle(
                              height: 5.0,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 239, 212, 89),
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Text(
                            '8,102',
                            style: TextStyle(
                              height: 5.0,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 239, 212, 89),
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30.0),
          child: Stack(
            children: [
              Container(
                width: widht * 0.8,
                padding: EdgeInsets.only(top: 135.0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 132, 68),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text(
                      'Jumlah',
                      style: TextStyle(
                        height: 5.0,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '14,451',
                      style: TextStyle(
                        height: 3.5,
                        color: Color.fromARGB(255, 239, 212, 89),
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: widht * 0.8,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 22, 167, 92),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 15,
                      spreadRadius: 1,
                      offset: Offset(0, 15),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 7,
                                width: 7,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 239, 212, 89),
                                    shape: const CircleBorder(),
                                  ),
                                  child: const Text(''),
                                  onPressed: () {},
                                ),
                              ),
                              Text(
                                ' Daya Tampung SMA',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Color.fromARGB(255, 66, 165, 245),
                              ),
                              Text(
                                '(104)',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(top: 15.0, right: 40.0, left: 40.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 7,
                                width: 7,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 239, 212, 89),
                                    shape: const CircleBorder(),
                                  ),
                                  child: const Text(''),
                                  onPressed: () {},
                                ),
                              ),
                              Text(
                                ' Negri',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 7,
                                width: 7,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 239, 212, 89),
                                    shape: const CircleBorder(),
                                  ),
                                  child: const Text(''),
                                  onPressed: () {},
                                ),
                              ),
                              Text(
                                ' Swasta',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontFamily: 'Poppins'),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        right: 60.0,
                        left: 60.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '6,349',
                            style: TextStyle(
                              height: 5.0,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 239, 212, 89),
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Text(
                            '8,102',
                            style: TextStyle(
                              height: 5.0,
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 239, 212, 89),
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 30.0),
          child: Stack(
            children: [
              Container(
                width: widht * 0.8,
                padding: EdgeInsets.only(top: height * 0.32),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 132, 68),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 7,
                                width: 7,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 239, 212, 89),
                                    shape: const CircleBorder(),
                                  ),
                                  child: const Text(''),
                                  onPressed: () {},
                                ),
                              ),
                              Container(
                                width: widht * 0.7,
                                child: Text(
                                  'Asumsi Berdasarkan Jumlah Rombel Lulusan SMA/SMK NEGRI :',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 40.0, bottom: 60.0),
                      child: Text(
                        '(15 Rombel X 36 Maksimal Jumlah Peserta Didik Per-Rombel) = 540',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: widht * 0.8,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 22, 167, 92),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(150.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 15,
                      spreadRadius: 1,
                      offset: Offset(0, 15),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 7,
                                width: 7,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 239, 212, 89),
                                    shape: const CircleBorder(),
                                  ),
                                  child: const Text(''),
                                  onPressed: () {},
                                ),
                              ),
                              Container(
                                width: widht * 0.7,
                                child: Text(
                                  'Maka Lulusan SMP Yang Dapat Tertampung Pada Sekolah Negri (SMA/SMK) :',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 40.0, bottom: 60.0, right: 40.0, left: 40.0),
                      child: Text(
                        '14,451',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 239, 212, 8),
                            fontFamily: 'Poppins'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
