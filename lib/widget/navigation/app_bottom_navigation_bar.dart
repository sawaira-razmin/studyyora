
import 'package:flutter/material.dart';
import 'package:studyyora/theme/app_colors.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const AppBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final List<IconData> icons = [
      Icons.home,
      Icons.book_online,
      Icons.heart_broken_outlined,
      Icons.person,
    ];

    final List<String> labels = [
      "Home",
      "Courses",
      "Favorite",
      "Profile",
    ];

    return Container(
   

      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 18,
      ),

      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 193, 190, 190),
            blurRadius: 8,
        
          ),
        ],
      ),

      child: Row(
        children: List.generate(4, (index) {

          final bool isSelected = currentIndex == index;

          return Expanded(
            child: InkWell(
              borderRadius: BorderRadius.circular(12),

              onTap: () {
                onTap(index);
              },

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    icons[index],
                    size: 25,
                    color: isSelected
                        ? AppColors.accentBlue
                        : Colors.grey,
                  ),

                  const SizedBox(height: 5),

                  Text(
                    labels[index],
                    style: TextStyle(
                      fontSize: 11,
                      color: isSelected
                          ? AppColors.accentBlue
                          : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
