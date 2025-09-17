import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/modules/QuranTabObj/SuraDetails.dart';

import '../../core/AppConst/AppConst.dart';
import '../../core/theme/appColors.dart';
import '../../models/Sura.dart';

class Suracard extends StatefulWidget {
  final Sura sura;
  Suracard({super.key,required this.sura});

  @override
  State<Suracard> createState() => _SuracardState();
}

class _SuracardState extends State<Suracard> {
  @override
  Widget build(BuildContext context) {
    return
      Row(
      spacing: 24,
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          height: 52,
          width: 52,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/icons/Sura_Number.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(appColors.white, BlendMode.srcIn)
            ),
          ),
          child: Center(
            child: Text(
              "${widget.sura.Id+ 1}",
              style: TextStyle(
                color: appColors.white,
                fontFamily: 'jana',
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.sura.EnglishName.toString(),
              style: TextStyle(
                color: appColors.white,
                fontFamily: 'jana',
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "${widget.sura.Verses.toString()} Verses",
              style: TextStyle(
                color: appColors.white,
                fontFamily: 'jana',
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        Spacer(),
        Text(
          widget.sura.ArabicName.toString(),
          style: TextStyle(
            color: appColors.white,
            fontFamily: 'jana',
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
          );
  }
}
