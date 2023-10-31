// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ortalama_hesaplama/constants/app_constants.dart';
import 'package:flutter_ortalama_hesaplama/widgets/ortalama_hesaplama_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dinamik Ortalama Hesapla',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Sabitler.anaRenk,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: OrtalamaHesaplaPage(),
    );
  }
}

