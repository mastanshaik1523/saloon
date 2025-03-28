import 'package:flutter/material.dart';
import 'package:barber/pages/loginpage.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 40, 27, 23),
        body: Container(
          margin: EdgeInsets.only(top: 120.0),
          child: Column(
            children: [
              Image.asset('lib/pages/images/saloon.png'),
              SizedBox(height: 80.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Loginpage()));
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(40)),
                  child: Text(
                    "Get Stylish Haircut",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
