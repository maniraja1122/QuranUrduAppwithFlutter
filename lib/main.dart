import "package:flutter/material.dart";
import 'package:quranurdu/util/MyRoutes.dart';

import 'Screens/AyyatList.dart';
import 'Screens/SurahList.dart';


void main(){
  runApp(MainApp());
}
class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        MyRoutes.SurahList:(context)=>SurahList(),
        MyRoutes.AyyatList:(context)=>AyyatList()
      },
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
