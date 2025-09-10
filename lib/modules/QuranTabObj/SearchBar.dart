import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/theme/appColors.dart';

class QuranSearchBar extends StatefulWidget {
  final TextEditingController controller;
  const QuranSearchBar({super.key, required this.controller});

  @override
  State<QuranSearchBar> createState() => _QuranSearchBarState();
}

class _QuranSearchBarState extends State<QuranSearchBar> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      onTapOutside: (event) => FocusManager.instance.primaryFocus!.unfocus(),
      cursorColor: appColors.primaryColor,
      style: TextStyle(
        fontSize: 16,
        color: appColors.primaryColor,
        fontFamily: 'jana',
        fontWeight: FontWeight.w700,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: appColors.secondaryColor.withValues(alpha: 0.6),
        prefixIcon: Padding(
          padding: EdgeInsets.all(8),
          child: SvgPicture.asset(
            'assets/icons/quranIcon.svg',
            width: 4,
            height: 4,
            colorFilter: const ColorFilter.mode(
              appColors.primaryColor,
              BlendMode.srcIn,
            ),
          ),
        ),
        focusColor: appColors.primaryColor,
        hintText: "Sura Name",
        hintStyle: TextStyle(
          color: appColors.primaryColor,
          fontFamily: 'jana',
          fontWeight: FontWeight.w700,
          fontSize: 16,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: appColors.primaryColor),
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: appColors.primaryColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: appColors.primaryColor, width: 1),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: appColors.primaryColor, width: 1),
        ),
      ),
    );
  }
}
