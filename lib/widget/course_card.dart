
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String university;
  final String country;
  final String duration;
  final String fee;

  CourseCard({
    required this.imagePath,
    required this.title,
    required this.university,
    required this.country,
    required this.duration,
    required this.fee,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 6),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    university,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  SizedBox(height: 4),
                  Text(country, style: TextStyle(fontSize: 12)),
                  SizedBox(height: 6),
                  Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Icon(Icons.access_time, size: 14, color: Colors.blue),
                      Text(duration, style: TextStyle(fontSize: 12)),
                      Icon(
                        Icons.payments_outlined,
                        size: 14,
                        color: Colors.blue,
                      ),
                      Text(
                        fee,
                        style: TextStyle(fontSize: 12, color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Icon(Icons.favorite_border, color: Colors.red),
          ],
        ),
      ),
    );
  }
}
