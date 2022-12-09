import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class DataPendaftaran extends StatelessWidget {
  const DataPendaftaran({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    Map<String, double> dataMap = {
      "2019": 3,
      "2020": 2,
      "2021": 3,
      "2022": 3,
      "2023": 3
    };
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: width * 0.08, bottom: height * 0.03),
          child: Row(
            children: [
              SizedBox(
                height: 15,
                width: 15,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 112, 205, 148),
                    shape: const CircleBorder(),
                  ),
                  child: const Text(''),
                  onPressed: () {},
                ),
              ),
              Text(
                ' Data Pendaftaran',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 149, 0),
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        PieChart(
          dataMap: dataMap,
          colorList: [
            Color.fromARGB(255, 22, 167, 92),
            Color.fromARGB(255, 31, 183, 103),
            Color.fromARGB(255, 77, 194, 126),
            Color.fromARGB(255, 112, 205, 148),
            Color.fromARGB(255, 155, 219, 179)
          ],
          chartRadius: width / 1.7,
          ringStrokeWidth: 60,
          legendOptions: LegendOptions(
            legendPosition: LegendPosition.top,
            showLegendsInRow: true,
            legendShape: BoxShape.rectangle
          ),
          chartValuesOptions: ChartValuesOptions(
              showChartValues: false,
              showChartValuesInPercentage: true,
              showChartValuesOutside: true,
              showChartValueBackground: false),
          chartType: ChartType.ring,
        ),
      ],
    );
  }
}
