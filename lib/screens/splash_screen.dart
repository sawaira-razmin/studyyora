import 'dart:async';
import 'package:flutter/material.dart';
import 'package:studyyora/screens/on_boarding_screen.dart';
import 'package:studyyora/theme/app_radius.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});



  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    
    super.initState();

Timer(Duration(seconds:5), (){
   Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingScreen(),));
});  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          // 1. Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg_image.png',
              fit: BoxFit.cover,
            ),
          ),

          // 2. Blue image overlay
          Container(
            color: Colors.black.withValues(alpha: 0.5),
          ),

          // 3. Screen content
          SafeArea(
            child: Column(
              children: [

                // Top space
                const Spacer(flex: 2),

                // 4. Logo
                Image.asset(
                  'assets/images/studyyora_logo.png',
                  width: 230,
                  fit: BoxFit.contain,
                ),

                const SizedBox(height: 2),

                // 5. Tagline
                const Text(
                  'Find Your Future in Europe',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                // Middle space
                const Spacer(flex: 4),

                // 6. Loading bar
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                  ),
                  child:
                   LinearProgressIndicator(
                      value:null,
                      minHeight: 5,
                      backgroundColor: Colors.white38,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(AppRadius.md),
                    ), 
                  ),
                

                const SizedBox(height: 25),

                // 7. Loading text
                const Text(
                  'Exploring opportunities...',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 45),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
