import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../provider/provider.dart';

class CoinChart extends HookConsumerWidget {
  const CoinChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailController = ref.watch(detailControllerProvider);
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          height: size.height * 0.15,
          width: size.width,
          child: Center(
            child: LineChart(
              LineChartData(
                minX: detailController.getMinX(),
                maxX: detailController.getLarger(),
                borderData: FlBorderData(show: false),
                titlesData: FlTitlesData(show: false),
                gridData: FlGridData(
                  show: false,
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: detailController.getCoinHistoryChartSpots(),
                    barWidth: 2.0,
                    dotData: FlDotData(show: false),
                    color: const Color.fromARGB(255, 224, 43, 87),
                  )
                ],
              ),
              swapAnimationDuration: const Duration(milliseconds: 450),
              swapAnimationCurve: Curves.decelerate,
            ),
          ),
        ),
      ],
    );
  }
}
