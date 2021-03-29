import 'package:flutter/material.dart';
import 'package:chartpost/bitcoin_price_series.dart';
import 'package:chartpost/bitcoin_price_chart.dart';
import 'package:charts_flutter/flutter.dart' as charts;
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     final List<BitcoinPriceSeries> data = [
    BitcoinPriceSeries(
      month: "Jan",
      price: 50000,
      barColor: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    BitcoinPriceSeries(
      month: "Feb",
      price: 60000,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    BitcoinPriceSeries(
      month: "March",
      price: 58000,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
  ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Bitcoin price from Jan to March (2021) "),
      ),
      body: Center(
        child: BitcoinPriceChart(
      data: data,
    )
        ),
    );
  }
}