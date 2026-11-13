
import 'package:flutter/material.dart';
import 'package:studyyora/destination_chips.dart';
import 'package:studyyora/theme/app_text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning",
                        style: AppTextStyles.body,
                      ),

                      const SizedBox(height: 2),

                      Text(
                        "Aisha Khan",
                        style: AppTextStyles.heading1,
                      ),
                    ],
                  ),

                  const Icon(Icons.notifications_none),
                ],
              ),

              const SizedBox(height: 12),

              // Search Bar
              TextField(
                decoration: InputDecoration(
                  hintText: "Search your dream university",
                  prefixIcon: const Icon(Icons.search),

                  filled: true,
                  fillColor: Colors.white,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(65),
                    borderSide: BorderSide.none,
                  ),

                  
                ),
              ),

              const SizedBox(height: 12),

              // Home Banner
          SizedBox(
  height: 155,
  width: double.infinity,

  child: ClipRRect(
    borderRadius: BorderRadius.circular(30),

    child: Stack(
      fit: StackFit.expand,

      children: [

        // Background Image
        Image.asset(
          "assets/images/home_screen.PNG",
          fit: BoxFit.cover,
        ),

        // Text and Button
        Padding(
          padding: const EdgeInsets.all(14),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              const Text(
                "Your European/nStudy Journey/nStarts Here",
                style: AppTextStyles.display
              ),

              const SizedBox(height: 10),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 7,
                ),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: const Text(
                  "Explore Now",
                  style: AppTextStyles.heading1
                ),
              ),

            ],
          ),
        ),
      ],
    ),
  ),

),
SizedBox(height: 5,)   ,
Column(
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Popular destinations"),
        TextButton(onPressed: (){}, child: Text("View All")),
      ],
    ),
    SizedBox(height: 5,),
    

     ],
          ),
          
            ])))
    );
  }
}
