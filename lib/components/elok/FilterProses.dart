import 'package:flutter/material.dart';
import 'package:ppdb_jabar/routes/routes.dart';

class FilterProses extends StatelessWidget {
  const FilterProses({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double widht = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 50.0, bottom: 50.0),
        width: widht * 0.9,
        decoration: BoxDecoration(
          color: Color.fromRGBO(22, 167, 92, 1),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        alignment: Alignment.center,
        child: Filter());
  }
}

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  List<String> jenjangSekolah = <String>['SMA', 'SMK', 'SLB'];
  List<String> jenisSeskolah = <String>['Negeri', 'Swasta'];
  List<String> radius = <String>['5 Km', '10 Km'];
  List<String> daerah = <String>['Bogor', 'Kota Bogor'];
  List<String> namaSekolah = <String>['SMKN 1 Bogor', 'SMKN 2 Bogor'];

  String jenjangValue = 'SMA';
  String jenisValue = 'Negeri';
  String radiusValue = '5 Km';
  String daerahValue = "Bogor";
  String namaSekolahValue = 'SMKN 1 Bogor';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double widht = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(top: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 7,
                width: 7,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(239, 212, 89, 1),
                    shape: const CircleBorder(),
                  ),
                  child: const Text(''),
                  onPressed: () {},
                ),
              ),
              Text(
                ' Filter Lebih Lanjut',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 30.0),
            child: Column(
              children: [
                Text(
                  'Jenjang',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9)),
                  width: widht * 0.8,
                  child: DropdownButton<String>(
                    value: jenjangValue,
                    underline: Container(
                      height: 0,
                    ),
                    onChanged: (String? newJenjangValue) {
                      setState(() {
                        jenjangValue = newJenjangValue!;
                        print(newJenjangValue);
                      });
                    },
                    items: jenjangSekolah.map<DropdownMenuItem<String>>(
                      (String newJenjangValue) {
                        return DropdownMenuItem<String>(
                          value: newJenjangValue,
                          child: Text(newJenjangValue),
                        );
                      },
                    ).toList(),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30.0),
            child: Column(
              children: [
                Text(
                  'Jenis Sekolah',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9)),
                  width: widht * 0.8,
                  child: DropdownButton<String>(
                    underline: Container(
                      height: 0,
                    ),
                    onChanged: (String? newJenisValue) {
                      setState(() {
                        jenisValue = newJenisValue!;
                        print(newJenisValue);
                      });
                    },
                    value: jenisValue,
                    items: jenisSeskolah.map<DropdownMenuItem<String>>(
                      (String newJenisValue) {
                        return DropdownMenuItem<String>(
                          value: newJenisValue,
                          child: Text(newJenisValue),
                        );
                      },
                    ).toList(),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30.0),
            child: Column(
              children: [
                Text(
                  'Radius',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(9)),
                  width: widht * 0.8,
                  child: DropdownButton<String>(
                    underline: Container(
                      height: 0,
                    ),
                    onChanged: (String? newRadiusValue) {
                      setState(() {
                        radiusValue = newRadiusValue!;
                        print(newRadiusValue);
                      });
                    },
                    value: radiusValue,
                    items: radius.map<DropdownMenuItem<String>>(
                      (String newRadiusValue) {
                        return DropdownMenuItem<String>(
                          value: newRadiusValue,
                          child: Text(newRadiusValue),
                        );
                      },
                    ).toList(),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
            width: widht * 0.4,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(100)),
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pushReplacementNamed(context, routes.proses);
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Proses',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                      Icon(
                        Icons.arrow_circle_right,
                        color: Color.fromRGBO(22, 167, 92, 100),
                        size: 50,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
