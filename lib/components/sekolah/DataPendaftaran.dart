import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class DataPendaftaran extends StatelessWidget {
  const DataPendaftaran({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    Map<String, double> dataMap = {
      "2019": 5,
      "2020": 3,
      "2021": 5,
      "2022": 3,
      "2023": 1
    };
    return Container(
      padding: EdgeInsets.only(left: width * 0.15, right: width * 0.15),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 10,
                width: 10,
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
          PieChart(
            dataMap: dataMap,
            chartRadius: width / 1.7,
            legendOptions: LegendOptions(
                legendPosition: LegendPosition.top, showLegendsInRow: true),
            chartValuesOptions: ChartValuesOptions(showChartValues: false),
            chartType: ChartType.ring,
          ),
        ],
      ),
    );
  }
}
