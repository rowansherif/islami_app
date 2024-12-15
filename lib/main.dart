import 'package:flutter/material.dart';
import 'package:islami_app_practice/home/home_screen.dart';
import 'package:islami_app_practice/home/taps/quran/sura_details_screen.dart';
import 'package:islami_app_practice/my_app_theme.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => HomeScreen(), 
        SuraDetailsScreen.routeName : (context) => SuraDetailsScreen(),
      },
      darkTheme: MyAppTheme.theme,
    );
  }
}
