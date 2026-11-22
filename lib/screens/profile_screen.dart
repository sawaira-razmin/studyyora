
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FC),

      body: Column(
        children: [

          // Profile Header
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(25),
            decoration: const BoxDecoration(
              color: Color(0xff1554B5),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),

            child: SafeArea(
              bottom: false,
              child: Column(
                children: [

                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 38,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person,
                          size: 45,
                          color: Color(0xff1554B5),
                        ),
                      ),

                      const SizedBox(width: 15),

                      const Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sawaira',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 5),

                            Text(
                              'sawaira@gmail.com',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  Align(
                    alignment: Alignment.centerRight,
                    child: OutlinedButton(
                      onPressed: null,
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      child: const Text(
                        'Edit Profile',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 25),

          // Profile Options
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),

              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 8,
                ),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),

                child: ListView(
                  children: [

                    ListTile(
                      leading: const Icon(
                        Icons.favorite_border,
                        color: Color(0xff1554B5),
                      ),
                      title: const Text('My Saved Programmes'),
                      trailing: const Icon(Icons.chevron_right),
                    ),

                    const Divider(),

                    ListTile(
                      leading: const Icon(
                        Icons.assignment_outlined,
                        color: Color(0xff1554B5),
                      ),
                      title: const Text('Application Tracking'),
                      trailing: const Icon(Icons.chevron_right),
                    ),

                    const Divider(),

                    ListTile(
                      leading: const Icon(
                        Icons.settings_outlined,
                        color: Color(0xff1554B5),
                      ),
                      title: const Text('Settings'),
                      trailing: const Icon(Icons.chevron_right),
                    ),

                    const Divider(),

                    ListTile(
                      leading: const Icon(
                        Icons.headset_mic_outlined,
                        color: Color(0xff1554B5),
                      ),
                      title: const Text('Help & Support'),
                      trailing: const Icon(Icons.chevron_right),
                    ),

                    const Divider(),

                    ListTile(
                      leading: const Icon(
                        Icons.info_outline,
                        color: Color(0xff1554B5),
                      ),
                      title: const Text('About StudyYora'),
                      trailing: const Icon(Icons.chevron_right),
                      
                    ),
              
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
