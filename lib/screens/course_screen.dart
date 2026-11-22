
import 'package:flutter/material.dart';
import 'package:studyyora/logic/courses_controller.dart';
import 'package:studyyora/widget/course_card.dart';
import 'package:studyyora/widget/filter_chips_widget.dart';
import 'package:studyyora/widget/level_chips.dart';

class CoursesScreen extends StatefulWidget {
  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  final CoursesController controller = CoursesController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search section

              Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Colors.grey),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Text(
                        'Search courses...',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    const Icon(Icons.tune, color: Colors.blue),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Degree selection section

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    LevelChip(
                      label: 'All',
                      isSelected: controller.selectedLevel == 'All',
                      onTap: () {
                        setState(() {
                          controller.selectLevel('All');
                        });
                      },
                    ),

                    const SizedBox(width: 10),

                    LevelChip(
                      label: "Bachelor's",
                      isSelected:
                          controller.selectedLevel == "Bachelor's",
                      onTap: () {
                        setState(() {
                          controller.selectLevel("Bachelor's");
                        });
                      },
                    ),

                    const SizedBox(width: 10),

                    LevelChip(
                      label: "Master's",
                      isSelected:
                          controller.selectedLevel == "Master's",
                      onTap: () {
                        setState(() {
                          controller.selectLevel("Master's");
                        });
                      },
                    ),

                    const SizedBox(width: 10),

                    LevelChip(
                      label: 'PhD',
                      isSelected: controller.selectedLevel == 'PhD',
                      onTap: () {
                        setState(() {
                          controller.selectLevel('PhD');
                        });
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Filter section

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FilterChipWidget(label: 'Country'),
                    const SizedBox(width: 10),
                    FilterChipWidget(label: 'Subject'),
                    const SizedBox(width: 10),
                    FilterChipWidget(label: 'Tuition Fee'),
                    const SizedBox(width: 10),
                    FilterChipWidget(label: 'More'),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Course list section

              Column(
                children: [
                  for (var course in controller.getCourses())
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: CourseCard(
                        imagePath: course['imagePath']!,
                        title: course['title']!,
                        university: course['university']!,
                        country: course['country']!,
                        duration: course['duration']!,
                        fee: course['fee']!,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
