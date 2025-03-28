import 'package:flutter/material.dart';
import 'package:barber/pages/loginpage.dart';


class Signuppage extends StatefulWidget {
  const Signuppage({super.key});

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 50, left: 10),
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xFFB91635),
              Color(0XFF621D3C),
              Color(0XFF311937)
            ])),
            child: Text(
              "Create Your\nAccount!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 4),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style: TextStyle(
                      color: Color(0xFFB91635),
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Name",
                    prefixIcon: Icon(Icons.person_2),
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "Gmail",
                  style: TextStyle(
                      color: Color(0xFFB91635),
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Gmail",
                    prefixIcon: Icon(Icons.mail),
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  "Password",
                  style: TextStyle(
                      color: Color(0xFFB91635),
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.password),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 60),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 75,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFFB91635),
                        Color(0XFF621D3C),
                        Color(0XFF311937)
                      ]),
                      borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "You already have an account? ",
                            style: TextStyle(fontSize: 18),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Loginpage()),
                              );
                            },
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.blueAccent,
                                decoration:
                                    TextDecoration.underline, // Underline added
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'lib/pages/images/google.jpg',
                          height: 60,
                          width: 60,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
