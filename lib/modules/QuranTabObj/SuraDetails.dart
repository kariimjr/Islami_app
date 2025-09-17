import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/appColors.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;

import '../../models/Sura.dart';

class SuraDetails extends StatefulWidget {
  static const String route = 'SuraDetails';
  SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  Sura? sura;
  String details='';
  List ayat=[];

  @override
  Widget build(BuildContext context) {
    sura??=ModalRoute.of(context)!.settings.arguments as Sura?;
    if(details.isEmpty){
      readDeatils(sura!.Id+1);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Soura_Details_Background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: appColors.primaryColor,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            fontFamily: 'jana',
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: appColors.primaryColor,
          ),
          title: Text(sura!.EnglishName),
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/img_left_corner.png"),
                    Text(
                     sura!.ArabicName,
                      style: TextStyle(
                        fontFamily: 'jana',
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: appColors.primaryColor,
                      ),
                    ),
                    Image.asset("assets/images/img_right_corner.png"),
                  ],
                ),
                Expanded(
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                         details,
                          style: TextStyle(
                            height: 2.3,
                            wordSpacing: 1,
                            fontFamily: 'jana',
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: appColors.primaryColor,
                          ),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void readDeatils(int id) async{
    details=await rootBundle.loadString("assets/SurasDetails/${id}.txt");
    ayat=details.trim().split('\n');
    details='';
    for(int i=0;i<ayat.length;i++){
      details += ayat[i].trim() + '  [${i+1}]  ';
    }
    setState(() {

    });
  }


}
