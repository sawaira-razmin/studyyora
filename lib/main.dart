import 'package:flutter/material.dart';
import 'package:studyyora/screens/splash_screen.dart';

void main() {
  runApp( StudyYora());
}

class StudyYora extends StatelessWidget {
 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
     debugShowCheckedModeBanner: false,
    
     home: SplashScreen(),
     
     
     );
  }
} 