import 'package:flutter/material.dart';
import 'package:home_service_app/Mainscreen/DrawPage/SettingPage/settingpage.dart';
import 'package:home_service_app/Mainscreen/HomePage.dart';

import 'datetime.dart';

class Cleaning extends StatefulWidget {
  const Cleaning({super.key});

  @override
  State<Cleaning> createState() => _CleaningState();
}

class _CleaningState extends State<Cleaning> {
  var sername = [
    'Living Room',
    'Bedroom',
    'Bathroom',
    'Kitchen',
    'All Home',
    'Office',
  ];
  var iconsname = [
    'https://img.icons8.com/officel/2x/living-room.png',
    'https://img.icons8.com/fluency/2x/bedroom.png',
    'https://img.icons8.com/color/2x/bath.png',
    'https://img.icons8.com/dusk/2x/kitchen.png',
     'https://img.icons8.com/dusk/2x/home.png',
    'https://img.icons8.com/color/2x/office.png',
  ];
  var routs = [
    DateAndTime(),
    SettingPage(),
    HomePage(),
    HomePage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 15.0, left: 15.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.purpleAccent,
                    radius: 30,
                    child: Center(
                      child: IconButton(
                        color: Colors.white,
                        icon: Icon(
                          Icons.arrow_back_rounded,
                        ),
                        iconSize: 35,
                        onPressed: (() {
                          Navigator.pop(context);
                        }),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0, right: 15.0, left: 0.0),
            child: Text(
              'Where do you want \ncleaned?',
              style: TextStyle(
                fontSize: 35,
                color: Colors.grey.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: sername.length,
                separatorBuilder: (context, _) => SizedBox(),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => routs[index],
                      ),
                    );
                  },
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                      margin: EdgeInsets.only(bottom: 20.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white,
                            boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 8,
                    spreadRadius: 1,
                  ),
                ],
                          ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  Image.network(
                                    iconsname[index],
                                    width: 35,
                                    height: 35,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    sername[index],
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                        
                            ],
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
