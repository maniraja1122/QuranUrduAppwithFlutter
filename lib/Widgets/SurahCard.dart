import 'package:flutter/material.dart';
import 'package:quranurdu/AuthHelper.dart';
import 'package:quranurdu/util/MyRoutes.dart';

class SurahCard extends StatelessWidget {
  String name = "";
  String translation = "";
  int numberofv = 0;
  int index=0;
  SurahCard(
      {Key? key,
      required this.name,
      required this.numberofv,
      required this.translation,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        AuthHelper.SelectedSurah=AuthHelper.AllSurahs![index];
        Navigator.of(context).pushNamed(MyRoutes.AyyatList);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            key: UniqueKey(),
            title: (Text(name,style: TextStyle(fontSize: 20),)),
            subtitle: (Text(translation)),
            trailing: (Text(numberofv.toString()+" verses")),
          ),
        ),
      ),
    );
  }
}
