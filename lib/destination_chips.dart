import 'package:flutter/material.dart';
import 'package:studyyora/theme/app_colors.dart';

class DestinationChips  extends StatelessWidget{
       
       final String flag;
       final String country;
      
      DestinationChips ({
        required this.flag,
        required this.country,
      });
  @override
  Widget build(BuildContext context) {
   
    return Container(
      width: 150,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.background
      ),
      child: Row(
        children: [
          Text(flag),
          SizedBox(height: 5,),
          Text(country),        ],
      ),
    );
  }
}