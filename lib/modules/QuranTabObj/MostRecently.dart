import 'package:flutter/cupertino.dart';

import '../../core/theme/appColors.dart';

class MostRecent extends StatefulWidget {
  const MostRecent({super.key});

  @override
  State<MostRecent> createState() => _MostRecentState();
}

class _MostRecentState extends State<MostRecent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 283,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: appColors.primaryColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 17,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Al-Anbiya",
                    style: TextStyle(
                      color: appColors.secondaryColor,
                      fontFamily: 'jana',
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "الأنبياء",
                    style: TextStyle(
                      color: appColors.secondaryColor,
                      fontFamily: 'jana',
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "112 Verses ",
                    style: TextStyle(
                      color: appColors.secondaryColor,
                      fontFamily: 'jana',
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Image.asset(
              "assets/images/RecentRead.png",
              color: appColors.secondaryColor,
              width: 151,
              height: 136,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
