// ignore_for_file: unused_element, sort_child_properties_last, unused_local_variable, avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import 'package:flutter_ortalama_hesaplama/model/ders.dart';

class DataHelper {

  static List<Ders> tumEklenenDersler = [];

  static dersEkle(Ders ders){
    tumEklenenDersler.add(ders);
    
  }

  static double ortalamaHesapla(){
    double tomplamNot = 0;
    double toplamKredi = 0;

    tumEklenenDersler.forEach((element) {
      tomplamNot = tomplamNot + (element.krediDegeri * element.harfDegeri);
      toplamKredi += element.krediDegeri;
    });

    return tomplamNot / toplamKredi;
  }

  static List<String> _tumDerslerinHarfleri() {
    return ['AA', 'BA', 'BB', 'CB', 'CC', 'DC', 'DD', 'FD', 'FF'];
  }

  static double _harfiNotaCevir(String harf) {
    switch (harf) {
      case 'AA':
        return 4.0;
      case 'BA':
        return 3.5;
      case 'BB':
        return 3.0;
      case 'CB':
        return 2.5;
      case 'CC':
        return 2.0;
      case 'DC':
        return 1.5;
      case 'DD':
        return 1.0;
      case 'FD':
        return 0.5;
      case 'FF':
        return 0.0;
      default:
        return 1;
    }
  }

  static List<DropdownMenuItem<double>> tumDerslerinHarfleri() {
    return _tumDerslerinHarfleri()
        .map((e) => DropdownMenuItem(child: Text(e), value: _harfiNotaCevir(e)))
        .toList();
  }

  static List<int> _tumKrediler(){
    return List.generate(10, (index) => index+1).toList();
  }

  static List<DropdownMenuItem<double>> tumDerslerinKredileri(){
    return _tumKrediler()
        .map(
          (e) => DropdownMenuItem(
            child: Text(e.toString()),
            value: e.toDouble(),
          )
        )
        .toList();
  }

}
