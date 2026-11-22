import 'package:flutter/material.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // 1. Top Image Section

            SizedBox(
              height: 230,
              width: double.infinity,
              child: Stack(
                children: [

                  // Background Image

                  Image.asset(
                    'assets/images/home_screen.PNG',
                    width: double.infinity,
                    height: 230,
                    fit: BoxFit.cover,
                  ),

                  // Back Button

                  Positioned(
                    top: 30,
                    left: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),

                  // Favorite Icon

                  Positioned(
                    top: 30,
                    right: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.blue,
                      ),
                    ),
                  ),

                ],
              ),
            ),

            // 2. Course Information

            Padding(
              padding: EdgeInsets.all(20),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    'MSc Computer Science',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF172B55),
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    'Technical University of Munich',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                    ),
                  ),

                  SizedBox(height: 18),

                  // Course Details Row

                  Wrap(
                    spacing: 18,
                    runSpacing: 12,
                    children: [

                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('🇩🇪'),
                          SizedBox(width: 7),
                          Text('Germany'),
                        ],
                      ),

                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: Colors.blueGrey,
                          ),
                          SizedBox(width: 5),
                          Text('2 years'),
                        ],
                      ),

                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.euro,
                            color: Colors.blueGrey,
                          ),
                          SizedBox(width: 5),
                          Text('€ 3,500/year'),
                        ],
                      ),

                    ],
                  ),

                  SizedBox(height: 30),

                  // 3. Tabs Section

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [

                        Text(
                          'Overview',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),

                        SizedBox(width: 30),

                        Text(
                          'Entry Requirements',
                          style: TextStyle(fontSize: 16),
                        ),

                        SizedBox(width: 30),

                        Text(
                          'Fees',
                          style: TextStyle(fontSize: 16),
                        ),

                        SizedBox(width: 30),

                        Text(
                          'Deadlines',
                          style: TextStyle(fontSize: 16),
                        ),

                      ],
                    ),
                  ),

                  SizedBox(height: 12),

                  Divider(),

                  SizedBox(height: 20),

                  // 4. About Programme

                  Text(
                    'About this programme',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF172B55),
                    ),
                  ),

                  SizedBox(height: 15),

                  Text(
                    'The MSc in Computer Science at TUM offers a world-class education with a focus on research, innovation and real-world applications.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.6,
                      color: Colors.blueGrey,
                    ),
                  ),

                  SizedBox(height: 25),

                  // Programme Features

                  Row(
                    children: [
                      Icon(Icons.school, color: Colors.blue),
                      SizedBox(width: 15),
                      Text(
                        'World-class faculty',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  Row(
                    children: [
                      Icon(Icons.public, color: Colors.blue),
                      SizedBox(width: 15),
                      Text(
                        'International environment',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  Row(
                    children: [
                      Icon(Icons.work, color: Colors.blue),
                      SizedBox(width: 15),
                      Text(
                        'Excellent career opportunities',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),

                  SizedBox(height: 50),

                  // 5. Save to Favorites Button

                  SizedBox(
                    width: double.infinity,
                    height: 58,
                    child: ElevatedButton(
                      onPressed: () {},

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),

                          SizedBox(width: 12),

                          Text(
                            'Save to Favorites',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}