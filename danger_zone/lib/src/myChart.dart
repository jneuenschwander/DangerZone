import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class MyChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  const MyChart(this.seriesList, {this.animate});
  factory MyChart.withSampleData() {
    return new MyChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
 Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
    );
  }
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      new OrdinalSales('2014', 5),
      new OrdinalSales('2015', 25),
      new OrdinalSales('2016', 100),
      new OrdinalSales('2017', 75),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}
  class OrdinalSales {
    final String year;
    final int sales;

    OrdinalSales(this.year, this.sales);
  }