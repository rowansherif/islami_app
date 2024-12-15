import 'package:flutter/material.dart';
import 'package:islami_app_practice/app_colors.dart';
import 'package:islami_app_practice/home/taps/quran/sura_details_screen.dart';
import 'package:islami_app_practice/home/taps/quran/sura_list.dart';
import 'package:islami_app_practice/model/sura_details_model.dart';

class QuranScreen extends StatelessWidget {
   QuranScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset('assets/images/islami_logo.png',)),
          TextField(
            style: TextStyle(
              color: AppColors.whiteColor
            ),
            cursorColor: AppColors.primaryDark,
            decoration: InputDecoration(
              prefixIcon: ImageIcon(AssetImage('assets/images/textfield_icon.png',),
              color: AppColors.primaryDark,),
              hintText: 'Sura Name',
              hintStyle: TextStyle(
                color: AppColors.whiteColor,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 2,
                  color: AppColors.primaryDark
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 2,
                  color: AppColors.primaryDark
                ),
              )
            ),
          ),
          SizedBox(height: 20,),
          Text('Most Recently',
          style: TextStyle(
            color: AppColors.whiteColor
          ),),
          SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              color: AppColors.primaryDark,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sura En'),
                    Text('Sura Ar'),
                    Text('Aya Number'),
                  ],
                ),
                Image.asset('assets/images/quran_container_image.png')
              ],
            ),
          ),
          SizedBox(height: 20,),
          Text('Suras List',
          style: TextStyle(
            color: AppColors.whiteColor
          ),),

          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index){
                return InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, SuraDetailsScreen.routeName,
                    arguments: SuraModel.getSuraModel(index));
                  },
                  child: SuraList(
                    suraModel: SuraModel.getSuraModel(index)),
                );
              },
               separatorBuilder: (context, index){
                return Divider(color: AppColors.whiteColor,
                indent: 30,
                endIndent: 30.50,
                thickness: 2,
                height: 5,);
               }, 
               itemCount: SuraModel.suraArabicNameList.length),
          )
        ],
      ),
    );
  }
}