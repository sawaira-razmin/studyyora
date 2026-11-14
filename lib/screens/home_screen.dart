
import 'package:flutter/material.dart';
import 'package:studyyora/destination_chips.dart';
import 'package:studyyora/theme/app_text_styles.dart';
import 'package:studyyora/widget/course_card.dart';
import 'package:studyyora/widget/level_chips.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   String selectedLevel = "Master's";
final levels = ["Bachelor's", "Master's", "PhD"];
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
                          mainAxisSize: MainAxisSize.min,

                          children: [

                            const Text(
                              "Your European\nStudy Journey\nStarts Here",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                height: 1.2,
                              ),
                            ),

                            const SizedBox(height: 8),

                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 5,
                              ),

                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),

                              child: const Text(
                                "Explore Now",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87,
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 5),

              // Popular Destinations
              Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      const Text("Popular destinations"),

                      TextButton(
                        onPressed: () {},
                        child: const Text("View All"),
                      ),

                    ],
                  ),

                  const SizedBox(height: 5),

                  // Country Flags
                  Row(
                    children: [

                      Expanded(
                        child: DestinationChips(
                          flag: "assets/images/germany.png",
                          country: "Germany",
                        ),
                      ),

                      const SizedBox(width: 8),

                      Expanded(
                        child: DestinationChips(
                          flag: "assets/images/france.png",
                          country: "France",
                        ),
                      ),

                      const SizedBox(width: 8),

                      Expanded(
                        child: DestinationChips(
                          flag: "assets/images/netherlands.png",
                          country: "Netherland",
                        ),
                      ),

                      const SizedBox(width: 8),

                      Expanded(
                        child: DestinationChips(
                          flag: "assets/images/italy.png",
                          country: "Italy",
                        ),
                      ),
                      

                    ],
                    
                  ),
                

// Explore by Study Level
        

                  // Explore by Study Level
                  
],

          ), 
          SizedBox(height: 10,),
                   const Text(
  "Explore by Study Level",
  style: AppTextStyles.heading2,
),
SizedBox(height: 20,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: levels.map((level) {
    return LevelChip(
      label: level,
      isSelected: level == selectedLevel,
      onTap: () => setState(() => selectedLevel = level),
    );
  }).toList(),
),
SizedBox(height: 20,),
         Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text("Popular Programmes",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    Text("See All",
        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600)),
  ],
),
Row(
  children: [
    SizedBox(height: 12),
  ],
),
CourseCard(
  imagePath: "assets/images/homecardimage.jpg",
  title: "MSc Computer Science",
  university: "Technical University of Munich",
  country: "🇩🇪 Germany",
  duration: "2 years",
  fee: "€ 3,500/year",
),
   ]
    ),
      ),
    ));
  }
}
