import 'package:flutter/material.dart';
import 'package:islami_app_practice/app_colors.dart';
import 'package:islami_app_practice/home/taps/hadeth/hadeth_screen.dart';
import 'package:islami_app_practice/home/taps/quran/quran_screen.dart';
import 'package:islami_app_practice/home/taps/radio/radio_screen.dart';
import 'package:islami_app_practice/home/taps/sebha/sebha_screen.dart';
import 'package:islami_app_practice/home/taps/time/time_scree.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  static const String routeName = 'homeSCreen_route';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<String> icons = [
    'icon_quran',
    'icon_hadeth',
    'icon_sebha',
    'icon_radio',
    'icon_time',
  ];
  List <String> bgImages = [
    'assets/images/quran_bg.png',
    'assets/images/hadeth_bg.png',
    'assets/images/sebha_bg.png',
    'assets/images/radio_bg.png',
    'assets/images/time_bg.png',
  ];
  List <Widget> tapsWidgets = [
    QuranScreen(),
    HadethScreen(),
    SebhaScreen(),
    RadioScreen(),
    TimeScree(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          bgImages[selectedIndex],
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                  icon: tapLayout(index: 0, iconName: icons[0]),
                  label: 'Quran',
                ),
                BottomNavigationBarItem(
                  icon: tapLayout(index: 1, iconName: icons[1]),
                  label: 'Quran',
                ),
                BottomNavigationBarItem(
                  icon: tapLayout(index: 2, iconName: icons[2]),
                  label: 'Quran',
                ),
                BottomNavigationBarItem(
                  icon: tapLayout(index: 3, iconName: icons[3]),
                  label: 'Quran',
                ),
                BottomNavigationBarItem(
                  icon: tapLayout(index: 4, iconName: icons[4]),
                  label: 'Quran',
                ),
              ]),
        
          body: tapsWidgets[selectedIndex],
        )
      ],
    );
  }

  Widget tapLayout({required int index, required String iconName}) {
    return selectedIndex == index
        ? Container(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 19),
            decoration: BoxDecoration(
              color: AppColors.transperntBlack,
              borderRadius: BorderRadius.circular(66),
            ),
            child: ImageIcon(
              AssetImage('assets/images/$iconName.png'),
            ),
          )
        : ImageIcon(AssetImage('assets/images/$iconName.png'));
  }
}
