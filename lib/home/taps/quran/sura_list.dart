import 'package:flutter/material.dart';
import 'package:islami_app_practice/app_colors.dart';
import 'package:islami_app_practice/model/sura_details_model.dart';

class SuraList extends StatelessWidget{
  SuraModel suraModel ;

  SuraList({required this.suraModel});

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
              Text('${suraModel.index+1}',
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
                Text('${suraModel.suraEnglishName}',
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w500
                ),),
                Text('${suraModel.ayaNumber} Verses',
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w500
                ),),
              ],
            ),
            Text('${suraModel.suraArabicName}',
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