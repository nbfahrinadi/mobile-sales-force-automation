// /// Package import
// import 'package:flutter/material.dart';

// /// Chart import
// import 'package:syncfusion_flutter_charts/charts.dart';

// /// Local import

// class ActivityChart extends StatefulWidget {
//   const ActivityChart({super.key});

//   @override
//   State<ActivityChart> createState() => _ActivityChartState();
// }

// class _ActivityChartState extends State<ActivityChart> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.only(), child: _buildStepAreaChart());
//   }

//   /// Returns the cartesian step area chart.
//   SfCartesianChart _buildStepAreaChart() {
//     return SfCartesianChart(
//       legend: Legend(isVisible: true),
//       title: ChartTitle(text: 'Pemeliharaan Chart'),
//       plotAreaBorderWidth: 0,
//       primaryXAxis: DateTimeAxis(
//           majorGridLines: const MajorGridLines(width: 0),
//           edgeLabelPlacement: EdgeLabelPlacement.shift),
//       primaryYAxis: NumericAxis(
//           labelFormat: '{value}°C',
//           interval: 5,
//           maximum: 20,
//           axisLine: const AxisLine(width: 0),
//           majorTickLines: const MajorTickLines(size: 0)),
//       series: _getStepAreaSeries(),
//       tooltipBehavior: TooltipBehavior(enable: true),
//     );
//   }

//   List<_StepAreaData>? chartData;

//   @override
//   void initState() {
//     chartData = <_StepAreaData>[
//       _StepAreaData(DateTime(2019, 3), 10, 5),
//       _StepAreaData(DateTime(2019, 3, 2), 13, 7),
//       _StepAreaData(DateTime(2019, 3, 3), 14, 10),
//       _StepAreaData(DateTime(2019, 3, 4), 12, 5),
//       _StepAreaData(DateTime(2019, 3, 5), 12, 4),
//       _StepAreaData(DateTime(2019, 3, 6), 12, 8),
//       _StepAreaData(DateTime(2019, 3, 7), 13, 6),
//       _StepAreaData(DateTime(2019, 3, 8), 12, 4),
//       _StepAreaData(DateTime(2019, 3, 9), 15, 8),
//       _StepAreaData(DateTime(2019, 3, 10), 14, 7),
//       _StepAreaData(DateTime(2019, 3, 11), 10, 3),
//       _StepAreaData(DateTime(2019, 3, 12), 13, 4),
//       _StepAreaData(DateTime(2019, 3, 13), 12, 4),
//       _StepAreaData(DateTime(2019, 3, 14), 11, 6),
//       _StepAreaData(DateTime(2019, 3, 15), 14, 10),
//       _StepAreaData(DateTime(2019, 3, 16), 14, 9),
//       _StepAreaData(DateTime(2019, 3, 17), 11, 4),
//       _StepAreaData(DateTime(2019, 3, 18), 11, 2),
//     ];
//     super.initState();
//   }

//   /// Returns the list of chart series
//   /// which need to render on the step area chart.
//   List<CartesianSeries<dynamic, dynamic>> _getStepAreaSeries() {
//     return <CartesianSeries<dynamic, dynamic>>[
//       StepAreaSeries<_StepAreaData, DateTime>(
//         dataSource: chartData!,
//         color: const Color.fromRGBO(75, 135, 185, 0.6),
//         borderColor: const Color.fromRGBO(75, 135, 185, 1),
//         borderWidth: 2,
//         name: 'High',
//         xValueMapper: (_StepAreaData sales, _) => sales.x,
//         yValueMapper: (_StepAreaData sales, _) => sales.high,
//       ),
//       StepAreaSeries<_StepAreaData, DateTime>(
//         dataSource: chartData!,
//         borderColor: const Color.fromRGBO(192, 108, 132, 1),
//         color: const Color.fromRGBO(192, 108, 132, 0.6),
//         borderWidth: 2,
//         name: 'Low',
//         xValueMapper: (_StepAreaData sales, _) => sales.x,
//         yValueMapper: (_StepAreaData sales, _) => sales.low,
//       )
//     ];
//   }

//   @override
//   void dispose() {
//     chartData!.clear();
//     super.dispose();
//   }
// }

// /// Private class for storing the step area chart data point.
// class _StepAreaData {
//   _StepAreaData(this.x, this.high, this.low);
//   final DateTime x;
//   final double high;
//   final double low;
// }
