import 'package:flutter/material.dart';
import 'package:home_service_app/IntroPage/intropage.dart';
import 'package:home_service_app/LoginPage/loginpage.dart';
import 'package:home_service_app/LoginPage/signuppage.dart';
import 'package:home_service_app/Mainscreen/comingsoon.dart';

import '../Cleaning/cleaningpage.dart';



class GridService extends StatelessWidget {
  var pNames = [
    "Cleaning",
    "A/C service",
    "Computer Service",
    "Chef",
    "Garden",
    "Pool",
  ];

  var routs = [
    Cleaning(),
    ComingSoon(),
     ComingSoon(),
     ComingSoon(),
     ComingSoon(),
     ComingSoon(),
    
  ];

  var imgname = [
    
    "mop",
    "air-conditioner",
    "laptop",
    "cooking",
    "gardener",
    "swimming-pool",
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
        return Container(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => routs[index],
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(4),
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      child: Image.asset(
                        "assets/images/${imgname[index]}.png",
                        height: 50,
                        width: 60,
                      ),
                    ),
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
        );
      }),
    );
  }
}
