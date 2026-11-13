
import 'package:flutter/material.dart';
import 'package:studyyora/theme/app_text_styles.dart';

class OnboardingItems extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingItems({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              image,
              width: 300,
              height: 300,
              fit: BoxFit.contain,
            ),
          ),

          const SizedBox(height: 15),

          Text(
            title,
            style: AppTextStyles.display,
          ),

          const SizedBox(height: 12),

          Text(
            description,
            style: AppTextStyles.label,
          ),
        ],
      ),
    );
  }
}