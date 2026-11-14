
import 'package:flutter/material.dart';
import 'package:studyyora/theme/app_colors.dart';
import 'package:studyyora/theme/app_text_styles.dart';

class DestinationChips extends StatelessWidget {

  final String flag;
  final String country;

  const DestinationChips({
    super.key,
    required this.flag,
    required this.country,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: 80,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.background,
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          Image.asset(
            flag,
            width: 50,
            height: 50,
                      ),

          const SizedBox(height: 5),

          Text(country 
          ,style: AppTextStyles.bodySmall,),

        ],
      ),
    );
  }
}
