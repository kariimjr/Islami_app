import 'package:flutter/material.dart';
import 'package:islami_app/modules/QuranTabObj/MostRecently.dart';
import 'package:islami_app/modules/QuranTabObj/SuraCard.dart';
import 'package:islami_app/modules/QuranTabObj/SearchBar.dart';
import '../../models/Sura.dart';
import '../../core/AppConst/AppConst.dart';
import '../../core/theme/appColors.dart';

class Qurantab extends StatefulWidget {
  static const String route = 'QuranTab';
  Qurantab({super.key});

  @override
  State<Qurantab> createState() => _QurantabState();
}

class _QurantabState extends State<Qurantab> {
  TextEditingController search = TextEditingController();
  List<Sura> Searched = [];
  List<Sura> Quran = [];
  @override
  void initState() {
    super.initState();
    ReadQuran();

    search.addListener(() {
      setState(() {
        if (search.text.isEmpty) {
          Searched = Quran;
        } else {
          Searched = Quran.where(
            (Sura) =>
                Sura.EnglishName.trim().toLowerCase().contains(
                  search.text.trim().toLowerCase(),
                ) ||
                Sura.ArabicName.trim().contains(search.text.trim()),
          ).toList();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/homeBackground.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              spacing: 21,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/islami_logo.png",
                    fit: BoxFit.cover,
                    height: 124,
                    width: 299,
                  ),
                ),
                QuranSearchBar(controller: search),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Most Recently",
                  style: TextStyle(
                    color: appColors.offWhite,
                    fontFamily: 'jana',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 10),
                    scrollDirection: Axis.horizontal,
                    physics: ClampingScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) => MostRecent(),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Suras List",
                    style: TextStyle(
                      color: appColors.offWhite,
                      fontFamily: 'jana',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.all(0),
                      scrollDirection: Axis.vertical,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) =>
                          Suracard(sura: Searched[index]),
                      separatorBuilder: (context, index) => Divider(
                        indent: 64,
                        endIndent: 64,
                        thickness: 2,
                        radius: BorderRadius.circular(2),
                      ),
                      itemCount: Searched.length,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void ReadQuran() {
    for (int i = 0; i < AyaNumber.length; i++) {
      Quran.add(
        Sura(
          Id: i,
          ArabicName: arabicAuranSuras[i],
          EnglishName: englishQuranSurahs[i],
          Verses: AyaNumber[i],
        ),
      );
      Searched = Quran;
    }
  }

  @override
  void dispose() {
    super.dispose();
    search.dispose();
  }
}
