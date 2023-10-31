// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_is_empty, list_remove_unrelated_type

import 'package:flutter/material.dart';
import 'package:flutter_ortalama_hesaplama/constants/app_constants.dart';
import 'package:flutter_ortalama_hesaplama/helper/data_helper.dart';
import 'package:flutter_ortalama_hesaplama/model/ders.dart';

class DersListesi extends StatelessWidget {
  final Function onElemanCikarildi;
  const DersListesi({required this.onElemanCikarildi,super.key});

  @override
  Widget build(BuildContext context) {
    List<Ders> tumDersler = DataHelper.tumEklenenDersler;
    return tumDersler.length > 0 ? ListView.builder(
        itemCount: tumDersler.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.startToEnd,
            onDismissed: (a){
              onElemanCikarildi(index);
            },
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Card(
                child: ListTile(
                  title: Text(tumDersler[index].ad),
                  leading: CircleAvatar(
                    backgroundColor: Sabitler.anaRenk,
                    child: Text((tumDersler[index].harfDegeri *
                            tumDersler[index].krediDegeri)
                        .toStringAsFixed(0)),
                  ),
                  subtitle: Text(
                      '${tumDersler[index].krediDegeri} Kredi, Not Değeri ${tumDersler[index].harfDegeri}'),
                ),
              ),
            ),
          );
        }): Center(child: Container(child: Text('Lütfen Ders Ekleyin', style: Sabitler.baslikStyle,),));
  }
}
