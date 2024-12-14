import 'package:flutter/material.dart';
import 'package:islami_app_practice/app_colors.dart';

class SuraList extends StatelessWidget{
  int index;
  String suraAr;
  String SuraEn;
  String ayaNumber;

  SuraList({required this.index, required this.suraAr, required this.SuraEn, required this.ayaNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/images/vector.png'),
              Text('$index',
              style: TextStyle(
                color: AppColors.whiteColor,
                fontWeight: FontWeight.w500
              ),),
            ],
          ),
          SizedBox(width: 10,),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(SuraEn,
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w500
                ),),
                Text('$ayaNumber Verses',
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w500
                ),),
              ],
            ),
            Text(suraAr,
            style: TextStyle(
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w500
                ),
            ),
            
              ],
            ),
          )
      
          
        ],
      ),
    );
  }
}