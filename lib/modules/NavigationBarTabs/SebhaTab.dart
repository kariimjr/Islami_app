import 'dart:math';
import 'package:flutter/material.dart';
import 'package:islami_app/core/AppConst/AppConst.dart';
import 'package:islami_app/core/theme/appColors.dart';

class SebhaTab extends StatefulWidget {
  static const String route = 'SebhaTab';

  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  double _rotationAngle = 0;
  int TasbehCounter=0;

  @override
  Widget build(BuildContext context) {
    String Randomtasbeh = tasbehList[Random().nextInt(tasbehList.length)];

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Sebha_Background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(45.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/images/islami_logo.png",
                fit: BoxFit.cover,
                height: 171,
                width: 291,
              ),
              Spacer(),
              Text(
                "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
                style: TextStyle(
                  color: appColors.white,
                  fontFamily: 'jana',
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Spacer(),

              InkWell(
                  overlayColor: WidgetStatePropertyAll(Colors.transparent),
                  onTap:rotateSebha,
                  onLongPress: restTasbehCount,
                  child: Stack(
                    children: [
                      Positioned(
                      left: 175,
                      top: -1,
                      child:Image.asset(
                        "assets/images/HeadSebha.png",
                        fit: BoxFit.cover,
                        width: 73,
                        height: 86,
                      ),
                                            ),
                      Transform.rotate(
                        angle: _rotationAngle,
                        child: Container(
                          width: 500,
                          height:510,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/SebhaBody.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(2),
                        margin: EdgeInsets.only(top: 200,left: 50),
                        width: 250,
                        height: 200,
                        child: Column(
                          spacing: 10,
                          children: [
                            Text(
                              Randomtasbeh,
                              style: TextStyle(
                                color: appColors.white,
                                fontFamily: 'jana',
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "${TasbehCounter}",
                              style: TextStyle(
                                color: appColors.white,
                                fontFamily: 'jana',
                                fontSize: 36,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              Text(
                "Long Press to Rest the Counter",
                style: TextStyle(
                  color: appColors.primaryColor,
                  fontFamily: 'jana',
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  void rotateSebha() {
    setState(() {
      _rotationAngle += pi / 8;
      TasbehCounter++;

    });
  }

  void restTasbehCount(){
    setState(() {
      TasbehCounter=0;
    });
  }



}
