

import 'package:flutter/material.dart';
import 'package:studyyora/screens/login_screen.dart';

class SignupScreen extends StatefulWidget {
const SignupScreen({super.key});

@override
State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

// Password Visibility
bool isPasswordVisible = false;

// Confirm Password Visibility
bool isConfirmPasswordVisible = false;

@override
Widget build(BuildContext context) {

return Scaffold(
backgroundColor: Colors.white,

body: SafeArea(
child: SingleChildScrollView(
child: Padding(
padding: const EdgeInsets.all(24),

child: Column(
crossAxisAlignment: CrossAxisAlignment.start,

children: [

// Back Arrow

IconButton(
onPressed: () {
Navigator.pop(context);
},
icon: const Icon(Icons.arrow_back),
),

const SizedBox(height: 20),

// Title

const Text(
'Create Your Account',
style: TextStyle(
fontSize: 26,
fontWeight: FontWeight.bold,
),
),

const SizedBox(height: 10),

// Subtitle

const Text(
'Join Studyyora and start your study abroad journey',
style: TextStyle(
fontSize: 15,
color: Colors.grey,
),
),

const SizedBox(height: 30),

// Full Name

TextField(
decoration: InputDecoration(
hintText: 'Full Name',
prefixIcon: const Icon(Icons.person_outline),
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(12),
),
),
),

const SizedBox(height: 18),

// Email

TextField(
keyboardType: TextInputType.emailAddress,
decoration: InputDecoration(
hintText: 'Email address',
prefixIcon: const Icon(Icons.email_outlined),
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(12),
),
),
),

const SizedBox(height: 18),

// Password

TextField(
obscureText: !isPasswordVisible,

decoration: InputDecoration(
hintText: 'Password',

prefixIcon: const Icon(Icons.lock_outline),

suffixIcon: IconButton(
onPressed: () {
setState(() {
isPasswordVisible =
!isPasswordVisible;
});
},

icon: Icon(
isPasswordVisible
? Icons.visibility
: Icons.visibility_off,
),
),

border: OutlineInputBorder(
borderRadius: BorderRadius.circular(12),
),
),
),

const SizedBox(height: 18),

// Confirm Password

TextField(
obscureText: !isConfirmPasswordVisible,

decoration: InputDecoration(
hintText: 'Confirm Password',

prefixIcon: const Icon(Icons.lock_outline),

suffixIcon: IconButton(
onPressed: () {
setState(() {
isConfirmPasswordVisible =
!isConfirmPasswordVisible;
});
},

icon: Icon(
isConfirmPasswordVisible
? Icons.visibility
: Icons.visibility_off,
),
),

border: OutlineInputBorder(
borderRadius: BorderRadius.circular(12),
),
),
),

const SizedBox(height: 25),

// Sign Up Button

SizedBox(
width: double.infinity,
height: 55,

child: ElevatedButton(
onPressed: () {},

style: ElevatedButton.styleFrom(
backgroundColor: Colors.blue,
foregroundColor: Colors.white,

shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(12),
),
),

child: const Text(
'Sign Up',
style: TextStyle(
fontSize: 17,
fontWeight: FontWeight.bold,
),
),
),
),

const SizedBox(height: 25),

// OR Divider

const Row(
children: [

Expanded(
child: Divider(),
),

Padding(
padding: EdgeInsets.symmetric(horizontal: 12),

child: Text('OR'),
),

Expanded(
child: Divider(),
),

],
),

const SizedBox(height: 25),

// Google Button

SizedBox(
width: double.infinity,
height: 55,

child: OutlinedButton(
onPressed: () {},

child: const Row(
mainAxisAlignment: MainAxisAlignment.center,

children: [

Text(
'G',
style: TextStyle(
color: Colors.blue,
fontSize: 22,
fontWeight: FontWeight.bold,
),
),

SizedBox(width: 12),

Text(
'Continue with Google',
style: TextStyle(
color: Colors.black,
),
),

],
),
),
),

const SizedBox(height: 18),

// Apple Button

SizedBox(
width: double.infinity,
height: 55,

child: OutlinedButton(
onPressed: () {},

child: const Row(
mainAxisAlignment: MainAxisAlignment.center,

children: [

Icon(
Icons.apple,
color: Colors.black,
),

SizedBox(width: 12),

Text(
'Continue with Apple',
style: TextStyle(
color: Colors.black,
),
),

],
),
),
),

const SizedBox(height: 35),

// Login Footer

Row(
mainAxisAlignment: MainAxisAlignment.center,

children: [

const Text(
'Already have an account?',
),

TextButton(
onPressed: () {
  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
},

child: const Text('Login'),
),

],
),

],
),
),
),
),
);
}
}
