import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ppdb_jabar/components/Footer.dart';
import 'package:ppdb_jabar/components/app_bar.dart';
import 'package:ppdb_jabar/components/sekolah/InformasiSekolah.dart';
import 'package:ppdb_jabar/pages/DetailSekolah.dart';
import 'package:ppdb_jabar/routes/routes.dart';
// Di Atas Component Wajib

class InformasiSekolah extends StatefulWidget {
  const InformasiSekolah({super.key});
  static const String routeName = '/informasiSekolah';

  @override
  State<InformasiSekolah> createState() => _InformasiSekolahState();
}

class _InformasiSekolahState extends State<InformasiSekolah> {
  late ScrollController _scrollController;
  bool _showBackToTopButton = false;
  bool _isVisible = false;
  bool _navbarDropdown = false;
  List<String> kota = <String>['Kota', 'Bogor'];
  List<String> jenisSeskolah = <String>['Jenis Sekolah', 'Negeri', 'Swasta'];

  String kotaValue = 'Kota';
  String jenisValue = 'Jenis Sekolah';

  void initState() {
    getData();
    setState(() {
      _scrollController = ScrollController()
        ..addListener(() {
          setState(() {
            if (_scrollController.offset >= MediaQuery.of(context).size.width) {
              _showBackToTopButton = true;
            } else {
              _showBackToTopButton = false;
            }
          });
        });
    });
    super.initState();
  }

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void navbarDropdown() {
    setState(() {
      _navbarDropdown = !_navbarDropdown;
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
          !_isVisible
              ? Builder(
                  builder: (context) => IconButton(
                    onPressed: () {
                      setState(() {
                        showToast();
                      });
                    },
                    icon: Icon(Icons.menu),
                    color: Colors.black,
                    iconSize: 30,
                  ),
                )
              : Builder(
                  builder: (context) => IconButton(
                    onPressed: () {
                      setState(() {
                        showToast();
                      });
                    },
                    icon: Icon(Icons.close_rounded),
                    color: Colors.black,
                    iconSize: 30,
                  ),
                ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Container(
                      height: height * 0.2,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/image/gedungSate.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Informasi Sekolah',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Sekolah Merdeka Jabar Juara',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Container(
                              width: width * 0.5,
                              height: 3,
                              decoration: BoxDecoration(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: height * 0.16,
                          left: width * 0.1,
                          right: width * 0.1),
                      width: width * 0.8,
                      height: height * 0.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 22, 167, 92),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Sekolah Merdeka Jabar Juara',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Container(
                            width: width * 0.3,
                            height: 3,
                            decoration: BoxDecoration(color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: width * 0.4,
                            height: 3,
                            decoration: BoxDecoration(color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: width * 0.5,
                            child: Text(
                              'Penerimaan Peserta Didik baru Provinsi Jawa Barat Tahun 2022',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 230, 246, 236)),
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'SMK',
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color.fromARGB(255, 22, 167, 92),
                                      textStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'SMA',
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color.fromARGB(255, 22, 167, 92),
                                      textStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'SLB',
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color.fromARGB(255, 22, 167, 92),
                                      textStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: width * 0.1,
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: DropdownButton<String>(
                                      value: kotaValue,
                                      underline: Container(
                                        height: 0,
                                      ),
                                      onChanged: (String? newValueKota) {
                                        setState(() {
                                          kotaValue = newValueKota!;
                                          print(newValueKota);
                                        });
                                      },
                                      items: kota.map<DropdownMenuItem<String>>(
                                        (String newJenjangValue) {
                                          return DropdownMenuItem<String>(
                                            value: newJenjangValue,
                                            child: Text(
                                              newJenjangValue,
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black),
                                            ),
                                          );
                                        },
                                      ).toList(),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: DropdownButton<String>(
                                      value: jenisValue,
                                      underline: Container(
                                        height: 0,
                                      ),
                                      onChanged: (String? newValueJenis) {
                                        setState(() {
                                          jenisValue = newValueJenis!;
                                          print(newValueJenis);
                                        });
                                      },
                                      items: jenisSeskolah
                                          .map<DropdownMenuItem<String>>(
                                        (String newJenjangValue) {
                                          return DropdownMenuItem<String>(
                                            value: newJenjangValue,
                                            child: Text(
                                              newJenjangValue,
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black),
                                            ),
                                          );
                                        },
                                      ).toList(),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 22, 167, 92),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.search_rounded,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 150.0,
                                          height: height * 0.035,
                                          child: TextField(
                                            style: TextStyle(
                                              color: Colors.white
                                            ),
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Sekolah Tujuan',
                                              hintStyle: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                fontStyle: FontStyle.italic,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Column(
                          children: [
                            DataTable(
                              headingRowColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(255, 230, 246, 236),
                              ),
                              columns: [
                                DataColumn(
                                  label: Text(
                                    'Nama Sekolah',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Kecamatan',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Kelurahan',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Action',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                              ],
                              rows: [
                                DataRow(
                                  cells: [
                                    DataCell(
                                      Text(
                                        'SMA NEGRI 1',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color:
                                              Color.fromRGBO(39, 76, 119, 0.8),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        'Kecamatan Cisarua',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color:
                                              Color.fromRGBO(39, 76, 119, 0.8),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        'Kelurahan Passanggrahan',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color:
                                              Color.fromRGBO(39, 76, 119, 0.8),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    DetailSekolah(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            'Detail',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Poppins',
                                              color: Color.fromRGBO(
                                                  39, 76, 119, 0.8),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                DataRow(
                                  color: MaterialStateProperty.all<Color>(
                                    Color.fromARGB(255, 230, 246, 236),
                                  ),
                                  cells: [
                                    DataCell(
                                      Text(
                                        'SMA NEGRI 2',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color:
                                              Color.fromRGBO(39, 76, 119, 0.8),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        'Kecamatan Ngamprah',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color:
                                              Color.fromRGBO(39, 76, 119, 0.8),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        'Kelurahan Passanggrahan',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color:
                                              Color.fromRGBO(39, 76, 119, 0.8),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    DetailSekolah(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            'Detail',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Poppins',
                                              color: Color.fromRGBO(
                                                  39, 76, 119, 0.8),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                DataRow(
                                  cells: [
                                    DataCell(
                                      Text(
                                        'SMA NEGRI 3',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color:
                                              Color.fromRGBO(39, 76, 119, 0.8),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        'Kecamatan Ujung Berung',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color:
                                              Color.fromRGBO(39, 76, 119, 0.8),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        'Kelurahan Pasir Jati',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color:
                                              Color.fromRGBO(39, 76, 119, 0.8),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    DetailSekolah(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            'Detail',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Poppins',
                                              color: Color.fromRGBO(
                                                  39, 76, 119, 0.8),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                DataRow(
                                  color: MaterialStateProperty.all<Color>(
                                    Color.fromARGB(255, 230, 246, 236),
                                  ),
                                  cells: [
                                    DataCell(
                                      Text(
                                        'SMA NEGRI 4',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color:
                                              Color.fromRGBO(39, 76, 119, 0.8),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        'Kecamatan Padalarang',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color:
                                              Color.fromRGBO(39, 76, 119, 0.8),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        'Kelurahan Passanggrahan',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color:
                                              Color.fromRGBO(39, 76, 119, 0.8),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    DetailSekolah(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            'Detail',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Poppins',
                                              color: Color.fromRGBO(
                                                  39, 76, 119, 0.8),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                DataRow(
                                  cells: [
                                    DataCell(
                                      Text(
                                        'SMA NEGRI 5',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color:
                                              Color.fromRGBO(39, 76, 119, 0.8),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        'Kecamatan Cileunyi',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color:
                                              Color.fromRGBO(39, 76, 119, 0.8),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        'Kelurahan Sukamiskin',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color:
                                              Color.fromRGBO(39, 76, 119, 0.8),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    DetailSekolah(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            'Detail',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Poppins',
                                              color: Color.fromRGBO(
                                                  39, 76, 119, 0.8),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                DataRow(
                                  color: MaterialStateProperty.all<Color>(
                                    Color.fromARGB(255, 230, 246, 236),
                                  ),
                                  cells: [
                                    DataCell(
                                      Text(
                                        'SMA NEGRI 6',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color:
                                              Color.fromRGBO(39, 76, 119, 0.8),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        'Kecamatan Kertasari',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color:
                                              Color.fromRGBO(39, 76, 119, 0.8),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        'Kelurahan Antapani Tengah',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color:
                                              Color.fromRGBO(39, 76, 119, 0.8),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    DetailSekolah(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            'Detail',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Poppins',
                                              color: Color.fromRGBO(
                                                  39, 76, 119, 0.8),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                DataRow(
                                  cells: [
                                    DataCell(
                                      Text(
                                        'SMA NEGRI 7',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color:
                                              Color.fromRGBO(39, 76, 119, 0.8),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        'Kecamatan Baleendah',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color:
                                              Color.fromRGBO(39, 76, 119, 0.8),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        'Kelurahan Cibadak',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins',
                                          color:
                                              Color.fromRGBO(39, 76, 119, 0.8),
                                        ),
                                      ),
                                    ),
                                    DataCell(
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    DetailSekolah(),
                                              ),
                                            );
                                          },
                                          child: Text(
                                            'Detail',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Poppins',
                                              color: Color.fromRGBO(
                                                  39, 76, 119, 0.8),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Halaman 1 Dari 50 | 350 data',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 22, 167, 92),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_left_rounded),
                                  iconSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                padding: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 22, 167, 92),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      '1',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      child: Text(
                                        '2',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color:
                                              Color.fromARGB(255, 22, 167, 92),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '3',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 22, 167, 92),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_right_rounded),
                                  iconSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30.0),
                        child: Footer(),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Visibility(
            visible: _isVisible,
            child: Container(
              width: width,
              height: height * 0.25,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15,
                    offset: Offset(0, 2),
                  )
                ],
              ),
              padding: EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Beranda',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, routes.home);
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Wilayah PPDB',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Jalur PPDB',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          !_navbarDropdown
                              ? Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  size: 30,
                                )
                              : Icon(
                                  Icons.keyboard_arrow_up_rounded,
                                  size: 30,
                                )
                        ],
                      ),
                      onTap: navbarDropdown,
                    ),
                    Stack(
                      children: [
                        Column(
                          children: [
                            ListTile(
                              title: Text(
                                'Profil PPDB',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              onTap: () {},
                            ),
                            ListTile(
                              title: Text(
                                'Pengaduan',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              onTap: () {},
                            ),
                            ListTile(
                              title: Text(
                                'E-Location',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, routes.elok);
                              },
                            ),
                          ],
                        ),
                        Visibility(
                          visible: _navbarDropdown,
                          child: Container(
                            decoration: BoxDecoration(color: Colors.white),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 25.0,
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                        width: 10,
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor: Color.fromARGB(
                                                255, 112, 205, 148),
                                            shape: const CircleBorder(),
                                          ),
                                          child: const Text(''),
                                          onPressed: () {},
                                        ),
                                      ),
                                      InkWell(
                                        child: Text(
                                          ' Jalur Pendaftaran PPDB SMA',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25.0, top: 10.0),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                        width: 10,
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor: Color.fromARGB(
                                                255, 112, 205, 148),
                                            shape: const CircleBorder(),
                                          ),
                                          child: const Text(''),
                                          onPressed: () {},
                                        ),
                                      ),
                                      InkWell(
                                        child: Text(
                                          ' Jalur Pendaftaran PPDB SMK',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25.0, top: 10.0, bottom: 5.0),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                        width: 10,
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor: Color.fromARGB(
                                                255, 112, 205, 148),
                                            shape: const CircleBorder(),
                                          ),
                                          child: const Text(''),
                                          onPressed: () {},
                                        ),
                                      ),
                                      InkWell(
                                        child: Text(
                                          ' Jalur Pendaftaran PPDB SLB',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: _showBackToTopButton == false
          ? null
          : FloatingActionButton(
              child: Icon(Icons.arrow_upward_rounded),
              backgroundColor: Color.fromRGBO(22, 167, 92, 1),
              onPressed: () {
                _scrollController.animateTo(0,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn);
              },
            ),
    );
  }
}

void getData() async {
  var dio = Dio();
  final response = await dio.get('https://jsonplaceholder.typicode.com/posts');
  print(response.data);
}
