import 'package:fit_sphere/core/theme/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WeeklyStats extends StatelessWidget {
  const WeeklyStats({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.6,
      child: BarChart(
        BarChartData(
            barGroups: [
              BarChartGroupData(x: 0, barRods: [
                BarChartRodData(
                    toY: 2, width: 24, color: ColorsManager.lightPurple)
              ]),
              BarChartGroupData(x: 1, barRods: [
                BarChartRodData(
                    toY: 3, width: 24, color: ColorsManager.lightPurple)
              ]),
              BarChartGroupData(x: 2, barRods: [
                BarChartRodData(
                    toY: 1.5, width: 24, color: ColorsManager.lightPurple)
              ]),
              BarChartGroupData(x: 3, barRods: [
                BarChartRodData(
                    toY: 4, width: 24, color: ColorsManager.lightPurple)
              ]),
              BarChartGroupData(x: 4, barRods: [
                BarChartRodData(
                    toY: 6, width: 24, color: ColorsManager.lightGreenYellow)
              ]),
              BarChartGroupData(x: 5, barRods: [
                BarChartRodData(
                    toY: 4, width: 24, color: ColorsManager.lightPurple)
              ]),
              BarChartGroupData(x: 6, barRods: [
                BarChartRodData(
                    toY: 3, width: 24, color: ColorsManager.lightPurple)
              ]),
            ],
            borderData: FlBorderData(
              show: false,
            ),
            gridData: const FlGridData(show: false),
            titlesData: FlTitlesData(
              show: true,
              topTitles:
                  const AxisTitles(sideTitles: SideTitles(showTitles: false)),
              leftTitles:
                  const AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (value, meta) {
                    switch (value.toInt()) {
                      case 0:
                        return const Text('Mon');
                      case 1:
                        return const Text('Tue');
                      case 2:
                        return const Text('Wed');
                      case 3:
                        return const Text('Thu');
                      case 4:
                        return const Text('Fri');
                      case 5:
                        return const Text('Sat');
                      case 6:
                        return const Text('Sun');
                      default:
                        return const Text('');
                    }
                  },
                ),
              ),
            )),
      ),
    );
  }
}
