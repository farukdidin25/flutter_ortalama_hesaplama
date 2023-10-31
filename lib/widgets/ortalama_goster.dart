// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_ortalama_hesaplama/constants/app_constants.dart';

class OrtalamaGoster extends StatelessWidget {
  final double ortalama;
  final int dersSayisi;

  const OrtalamaGoster(
      {required this.dersSayisi, required this.ortalama, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          dersSayisi > 0 ? '$dersSayisi Ders Girildi' : 'Ders Seciniz',
          style: Sabitler.ortalamaGosterBodyStyle,
        ),
        Text(
          ortalama >= 0 ? '${ortalama.toStringAsFixed(2)}' : '0.0',
          style: Sabitler.ortalamaStyle,
        ),
        Text(
          'Ortalama',
          style: Sabitler.ortalamaGosterBodyStyle,
        ),
      ],
    );
  }
}
