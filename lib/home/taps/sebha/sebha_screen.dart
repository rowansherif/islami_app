import 'package:flutter/material.dart';
import 'package:islami_app_practice/app_colors.dart';

class SebhaScreen extends StatelessWidget {
  int counter = 0;
  List <String> tsabeh = [
    'سبحان الله',
    'الحمد لله',
    'الله اكبر'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/islami_logo.png'),
          Text('سَبِّحِ اسْمَ رَبِّكَ الأعلى ', style: 
            TextStyle(color: AppColors.whiteColor,
            fontSize: 36),),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/images/sebha_image.png'),
              Container(
                margin: EdgeInsets.only(top: 70),
                child: Column(
                  children: [
                    Text('سبحان الله', 
                    style: 
                    TextStyle(color: AppColors.whiteColor,
                    fontSize: 36),),
                    Text('$counter', style: 
                    TextStyle(color: AppColors.whiteColor,
                    fontSize: 36),),
                      
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}