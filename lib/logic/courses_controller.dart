
class CoursesController {

  // Selected degree
  String selectedLevel = 'All';
    // Selected country
  String selectedCountry = 'All';
  

  // Course data
  List<Map<String, String>> courses = [

    {
      'imagePath': 'assets/images/home_screen.PNG',
      'title': 'Computer Science',
      'university': 'Oxford University',
      'country': 'United Kingdom',
      'duration': '4 Years',
      'fee': '\$15,000/year',
      'level': "Bachelor's",
    },

    {
      'imagePath': 'assets/images/image_two.jpg',
      'title': 'Software Engineering',
      'university': 'Harvard University',
      'country': 'United States',
      'duration': '4 Years',
      'fee': '\$18,000/year',
      'level': "Master's",
    },

    {
      'imagePath': 'assets/images/one_image.jpg',
      'title': 'Business Administration',
      'university': 'Oxford University',
      'country': 'United Kingdom',
      'duration': '3 Years',
      'fee': '\$12,000/year',
      'level': 'PhD',
    },




    {
      'imagePath': 'assets/images/one_image.jpg',
      'title': 'Artificial inteliginece ',
      'university': 'Oxford University',
      'country': 'United Kingdom',
      'duration': '3 Years',
      'fee': '\$12,000/year',
      'level': 'PhD',
    },

  ];

  // Change selected degree
  void selectLevel(String level) {
    selectedLevel = level;
  }

  // Get courses according to selected level
  List<Map<String, String>> getCourses() {

    if (selectedLevel == 'All') {
      return courses;
    }

    if (selectedLevel == "Bachelor's") {
      return [courses[0]];
    }

    if (selectedLevel == "Master's") {
      return [courses[1]];
    }

    if (selectedLevel == 'PhD') {
      return [courses[2]];
    }

    if (selectedLevel == 'Diploma') {
      return [courses[3]];
    }


    return [];
  }

}
