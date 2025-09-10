import 'package:flutter/material.dart';
import 'package:islami_app/AppData.dart';
import 'package:islami_app/HomeScreen.dart';
import '../../core/theme/appColors.dart';

class OnBorading extends StatefulWidget {
  int CurrentIndex = 0;
  OnBorading({super.key, required this.CurrentIndex});

  @override
  State<OnBorading> createState() => _OnBoradingState();
}

class _OnBoradingState extends State<OnBorading> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/islami_logo.png", height: 171, width: 291),
          Image.asset(
            onBoardingImg[widget.CurrentIndex],
            height: 415,
            width: double.infinity,
          ),
          Text(
            onBoardingTitle[widget.CurrentIndex],
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'jana',
              color: appColors.primaryColor,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            onBoardingDesc[widget.CurrentIndex],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'jana',
              color: appColors.primaryColor,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            spacing: 10,
            children: [
              widget.CurrentIndex != 0
                  ? TextButton(
                      onPressed: () {
                        widget.CurrentIndex = widget.CurrentIndex - 1;
                        setState(() {});
                      },
                      child: Text(
                        "Back",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'jana',
                          color: appColors.primaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  : SizedBox(width: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  onBoardingImg.length,
                  (index) => AnimatedContainer(
                    margin: EdgeInsetsGeometry.all(7),
                    duration: Duration(milliseconds: 200),
                    width: widget.CurrentIndex == index ? 18 : 7,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: widget.CurrentIndex == index
                          ? appColors.primaryColor
                          : appColors.onboarding,
                    ),
                  ),
                ),
              ),

              TextButton(
                onPressed: () {
                  if (widget.CurrentIndex == onBoardingImg.length - 1) {
                    Navigator.pushNamed(context, HomeScreen.route);
                  } else {
                    widget.CurrentIndex = widget.CurrentIndex + 1;
                  };
                  setState(() {});
                },
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'jana',
                    color: appColors.primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
