import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/appColors.dart';
import 'package:islami_app/modules/Onboarding/OnBoarding.dart';

class OnBoaringScreen extends StatelessWidget {
  static const String route = 'OnBoaringScreen';

  const OnBoaringScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: appColors.secondaryColor,
      body: PageView.builder(
        itemBuilder: (context, index) => OnBorading(CurrentIndex: index,),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        physics: ClampingScrollPhysics(),

      )
    );
  }
}
