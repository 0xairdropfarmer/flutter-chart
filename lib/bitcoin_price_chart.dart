import 'package:charts_flutter/flutter.dart' as charts;
import 'package:chartpost/bitcoin_price_series.dart';
import 'package:flutter/material.dart';

class BitcoinPriceChart extends StatelessWidget {
  final List<BitcoinPriceSeries> data;

  BitcoinPriceChart({@required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BitcoinPriceSeries, String>> series = [
      charts.Series(
          id: "Subscribers",
          data: data,
          domainFn: (BitcoinPriceSeries series, _) => series.month,
          measureFn: (BitcoinPriceSeries series, _) => series.price,
          colorFn: (BitcoinPriceSeries series, _) => series.barColor)
    ];

    return Container(
      height: 400,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                "Bitcoin price from Jan to March (2021) ",
              ),
              Expanded(
                child:( charts.BarChart(series, animate: true)),
                
              ), Expanded(
                child:( charts.PieChart(series, animate: true)),
                
               )
            ],
          ),
        ),
      ),
    );
  }
}