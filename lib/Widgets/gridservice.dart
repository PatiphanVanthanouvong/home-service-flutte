import 'package:flutter/material.dart';
import 'package:home_service_app/IntroPage/intropage.dart';
import 'package:home_service_app/LoginPage/loginpage.dart';
import 'package:home_service_app/LoginPage/signuppage.dart';

import '../Cleaning/cleaningpage.dart';

void _onTileClicked(int index) {
  debugPrint("You tapped on item $index");
}
// void _onGridClicked(int index) {
// Navigator.pushNamed(ContextAction!, '/Login');
// }

class GridService extends StatelessWidget {
  var pNames = [
    "Cleaning",
    "A/C service",
    "Computer Service",
    "Chef",
    "Chef",
    "Chef",
  ];

  var routs = [
    Cleaning(),
    IntroPage(),
    SignUpPage(),
    LoginPage(),
    SignUpPage(),
    IntroPage(),
  ];

  var imgname = [
    "bell",
    "fb",
    "marker",
    "signup_top",
    "bell",
    "apple",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pNames.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.99,
        crossAxisCount: 3,
      ),
      itemBuilder: ((context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => routs[index],
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFFD4ECF7),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: InkWell(
                    child: Image.asset(
                      "assets/images/${imgname[index]}.png",
                      height: 50,
                      width: 60,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      pNames[index],
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black.withOpacity(0.8),
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
