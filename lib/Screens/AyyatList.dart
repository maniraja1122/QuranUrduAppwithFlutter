import 'package:flutter/material.dart';
import 'package:quranurdu/AuthHelper.dart';
import 'package:quranurdu/Widgets/AyyatCard.dart';

class AyyatList extends StatelessWidget {
  const AyyatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder:(context,i){
        return AyyatCard(id: AuthHelper.SelectedSurah!.verses![i].id!, text: AuthHelper.SelectedSurah!.verses![i].text!, trans: AuthHelper.SelectedSurah!.verses![i].translation!);
      },itemCount: AuthHelper.SelectedSurah!.verses!.length),
    );
  }
}
