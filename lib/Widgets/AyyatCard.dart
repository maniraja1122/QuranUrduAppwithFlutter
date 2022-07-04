import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AyyatCard extends StatelessWidget {
  int id=0;
  String text="";
  String trans="";
  AyyatCard({Key? key,required this.id,required this.text,required this.trans}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(text,textDirection: TextDirection.rtl,style: TextStyle(fontSize: 20,fontFamily: GoogleFonts.notoSansArabic().fontFamily,)),
        subtitle: Text(trans,textDirection: TextDirection.rtl,style: TextStyle(fontSize: 16,fontFamily: GoogleFonts.notoNastaliqUrdu().fontFamily),),
        trailing: Text(id.toString()),
      ),
    );
  }
}
