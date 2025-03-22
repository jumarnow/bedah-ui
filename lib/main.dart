import 'dart:math';

import 'package:beda_ui/components/dashboard_storage_chart.dart';
import 'package:beda_ui/components/dashboard_update_storage.dart';
import 'package:beda_ui/components/item_product_coffee.dart';
import 'package:d_chart/bar_custom/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Item Product Coffee'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            ItemProductCoffe(),
          ],
        ),
      ),
    );
  }
}
