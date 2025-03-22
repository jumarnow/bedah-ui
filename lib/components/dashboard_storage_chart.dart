import 'package:d_chart/bar_custom/view.dart';
import 'package:flutter/material.dart';

class DashboardStorageChart extends StatelessWidget {
  final List<Map<String, dynamic>> storageData;

  const DashboardStorageChart({
    Key? key,
    required this.storageData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: DChartBarCustom(
          radiusBar: BorderRadius.circular(8),
          spaceBetweenItem: 24,
          listData: storageData.map((e) {
            return DChartBarDataCustom(
              value: (e['value'] as int).toDouble(),
              color: e['color'] as Color,
              label: e['title'] as String,
              showValue: true,
              valueCustom: Transform.translate(
                offset: const Offset(0, -24),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Text('${e['value']} GB'),
                      const SizedBox(height: 20),
                      Icon(
                        e['icon'] as IconData,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

