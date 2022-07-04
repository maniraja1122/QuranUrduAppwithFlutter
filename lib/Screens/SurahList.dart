import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:quranurdu/AuthHelper.dart';
import 'package:quranurdu/Modals/AllQuran.dart';
import 'package:quranurdu/Widgets/SurahCard.dart';

class SurahList extends StatelessWidget {
  const SurahList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: FutureBuilder(
        future: rootBundle.loadString("assets/quran.json"),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if(snapshot.hasError){
            return Text(snapshot.error.toString());
          }
          else if(snapshot.hasData){
            var str=snapshot.data;
            var json=jsonDecode(str!);
            AuthHelper.AllSurahs=[];
            var arr=json["quran"] as List;
            AuthHelper.AllSurahs=arr.map((e) => Surah.fromJson(e)).toList();
            return ListView.builder(itemBuilder:(context,i){
              return SurahCard(index: i,name: AuthHelper.AllSurahs![i].name!, numberofv:  AuthHelper.AllSurahs![i].totalVerses!, translation: AuthHelper.AllSurahs![i].translation!);
            } ,itemCount: AuthHelper.AllSurahs!.length,);
          }
          return CircularProgressIndicator();
        },
      ),
    ));
  }
}
