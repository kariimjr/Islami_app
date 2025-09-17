import 'package:flutter/material.dart';
import 'package:islami_app/HomeScreen.dart';
import 'package:islami_app/modules/Onboarding/OnBoaringScreen.dart';
import 'package:islami_app/modules/QuranTabObj/SuraDetails.dart';
import 'package:islami_app/modules/splashScreen.dart';
import 'core/init_app.dart';
import 'modules/NavigationBarTabs/HadithTab.dart';
import 'modules/NavigationBarTabs/QuranTab.dart';
import 'modules/NavigationBarTabs/RadioTab.dart';
import 'modules/NavigationBarTabs/SebhaTab.dart';
import 'modules/NavigationBarTabs/TimeTab.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await InitApp.initApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.route,
      routes: {
        'SplashScreen': (context) => SplashScreen(),
        'OnBoaringScreen': (context) => OnBoaringScreen(),
        'HomeScreen': (context) => HomeScreen(),
        'QuranTab': (context) => Qurantab(),
        'HadithTab': (context) => HadiThtab(),
        'SebhaTab': (context) => SebhaTab(),
        'RadioTab': (context) => RadioTab(),
        'TimeTab': (context) => TimeTab(),
        'SuraDetails': (context) => SuraDetails(),
      },
    );
  }
}
