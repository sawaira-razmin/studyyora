import 'package:flutter/material.dart';
import 'package:studyyora/screens/login_screen.dart';
import 'package:studyyora/widget/onboarding_items.dart';

class OnboardingScreen extends StatefulWidget {

  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 12,
          ),
          child: Column(
            children: [
              // Skip Button
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Color(0xFF17243A),
                      fontSize: 14,
                    ),
                  ),
                ),
              ),

              // Onboarding Content
              Expanded(
                child: PageView(
                  children: const [
                    OnboardingItems(
                      image: 'assets/images/image_one.png',
                      title: 'Discover Top \nStudy Programmes \nin Europe',
                      description:
                          'Explore world-class universities,\n'
                          'find the right courses and take\n'
                          'the next step towards your future.',
                    ),
                    OnboardingItems(
                      image: 'assets/images/image_two.png',
                      title: 'Explor Multiple \nCountries',
                      description:
                          'Explore world-class universities,\n'
                          'find the right courses and take\n'
                          'the next step towards your future.',
                    ),
                    OnboardingItems(
                      image: 'assets/images/image_three.png',
                      title: 'Compare & Choose',
                      description:
                          'Explore world-class universities,\n'
                          'find the right courses and take\n'
                          'the next step towards your future.',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Next Button
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1764D8),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Page Indicators
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: Color(0xFF1764D8),
                  ),
                  SizedBox(width: 6),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: Color(0xFFD5DCE8),
                  ),
                  SizedBox(width: 6),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: Color(0xFFD5DCE8),
                  ),
                ],
              ),

              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}