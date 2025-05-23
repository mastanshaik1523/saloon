import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:barber/pages/booking.dart';
import 'package:barber/pages/homepage.dart';
import 'package:barber/pages/loginpage.dart';
import 'package:barber/pages/onboarding.dart';
import 'package:barber/signuppage.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}
