import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/appColors.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'modules/NavigationBarTabs/HadithTab.dart';
import 'modules/NavigationBarTabs/QuranTab.dart';
import 'modules/NavigationBarTabs/RadioTab.dart';
import 'modules/NavigationBarTabs/SebhaTab.dart';
import 'modules/NavigationBarTabs/TimeTab.dart';

class HomeScreen extends StatefulWidget {
  static const String route = 'HomeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> NavigationBarTabs = [
      Qurantab(),
      HadiThtab(),
      SebhaTab(),
      RadioTab(),
      TimeTab(),
    ];
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (Index) {
          setState(() {
            currentIndex = Index;
          });
        },
        showUnselectedLabels: false,
        backgroundColor: appColors.primaryColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: appColors.white,
        unselectedItemColor: appColors.secondaryColor,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: EdgeInsets.all(6),
              width: 59,
              height: 34,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: appColors.secondaryColor.withValues(alpha: 0.6),
              ),
              child: SvgPicture.asset(
                "assets/icons/quranIcon.svg",
                width: 19,
                height: 22,
                colorFilter: const ColorFilter.mode(
                  appColors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            icon: SvgPicture.asset(
              "assets/icons/quranIcon.svg",
              width: 19,
              height: 22,
              colorFilter: const ColorFilter.mode(
                appColors.secondaryColor,
                BlendMode.srcIn,
              ),
            ),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: EdgeInsets.all(6),
              width: 59,
              height: 34,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: appColors.secondaryColor.withValues(alpha: 0.6),
              ),
              child: SvgPicture.asset(
                "assets/icons/bookIcon2.svg",
                width: 19,
                height: 22,
                colorFilter: const ColorFilter.mode(
                  appColors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            icon: SvgPicture.asset(
              "assets/icons/bookIcon2.svg",
              width: 19,
              height: 22,
              colorFilter: const ColorFilter.mode(
                appColors.secondaryColor,
                BlendMode.srcIn,
              ),
            ),
            label: 'Hadith',
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: EdgeInsets.all(6),
              width: 59,
              height: 34,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: appColors.secondaryColor.withValues(alpha: 0.6),
              ),
              child: SvgPicture.asset(
                "assets/icons/sebhaIcon.svg",
                width: 19,
                height: 22,
                colorFilter: const ColorFilter.mode(
                  appColors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            icon: SvgPicture.asset(
              "assets/icons/sebhaIcon.svg",
              width: 19,
              height: 22,
              colorFilter: const ColorFilter.mode(
                appColors.secondaryColor,
                BlendMode.srcIn,
              ),
            ),
            label: 'Sebha',
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: EdgeInsets.all(6),
              width: 59,
              height: 34,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: appColors.secondaryColor.withValues(alpha: 0.6),
              ),
              child: SvgPicture.asset(
                "assets/icons/radioIcon.svg",
                width: 19,
                height: 22,
                colorFilter: const ColorFilter.mode(
                  appColors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            icon: SvgPicture.asset(
              "assets/icons/radioIcon.svg",
              width: 19,
              height: 22,
              colorFilter: const ColorFilter.mode(
                appColors.secondaryColor,
                BlendMode.srcIn,
              ),
            ),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: EdgeInsets.all(6),
              width: 59,
              height: 34,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: appColors.secondaryColor.withValues(alpha: 0.6),
              ),
              child: SvgPicture.asset(
                "assets/icons/TimeIcon.svg",
                width: 19,
                height: 22,
                colorFilter: const ColorFilter.mode(
                  appColors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            icon: SvgPicture.asset(
              "assets/icons/TimeIcon.svg",
              width: 19,
              height: 22,
              colorFilter: const ColorFilter.mode(
                appColors.secondaryColor,
                BlendMode.srcIn,
              ),
            ),
            label: 'Time',
          ),
        ],
      ),
      body: NavigationBarTabs[currentIndex],
    );
  }
}
