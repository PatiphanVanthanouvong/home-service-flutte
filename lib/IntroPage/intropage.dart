import 'package:flutter/material.dart';

import '../LoginPage/loginpage.dart';
import '../LoginPage/signuppage.dart';



class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Color(0xff58186F),
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
        children: [
          // Text(
          //   "WELCOME TO EDU",
          //   style: TextStyle(fontWeight: FontWeight.bold),
          // ),
          SizedBox(height: 16 * 2),
          Row(
            children: [
              Spacer(),
              Expanded(
                flex: 8,
                child: Image.asset(
                 'assets/images/logo.png'
                ),
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 16 * 2),
            SizedBox(height: 16 * 2),
              SizedBox(height: 16 * 2),
        ],
         ),
          Row(
            children:  [
              Spacer(),
              Expanded(
                flex: 8,
                child:  Column(
        children: [
          Hero(
            tag: "login_btn",
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                );
              },
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple[700], elevation: 0),
              child: Text(
                "Login".toUpperCase(),
                  style: TextStyle(color: Colors.white)
              ),
            ),
          ),
          const SizedBox(height: 16),
          Hero(
            tag: "signin_btn",
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpPage();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[300], elevation: 0),
              child: Text(
                
                "Sign Up".toUpperCase(),
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
         ),
              ),
              Spacer(),
            ],
          ),
        ],
         ),
     );
  }
}