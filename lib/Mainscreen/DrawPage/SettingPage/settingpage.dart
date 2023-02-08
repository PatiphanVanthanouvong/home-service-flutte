import 'package:flutter/material.dart';
import 'package:home_service_app/LoginPage/loginpage.dart';
import 'package:home_service_app/Mainscreen/DrawPage/SettingPage/languages.dart';
import 'package:home_service_app/Mainscreen/DrawPage/SettingPage/notification.dart';
import 'package:home_service_app/Mainscreen/DrawPage/SettingPage/profile.dart';

import 'changepass..dart';

class SettingPage extends StatefulWidget {
  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  var sername = [
    'Languages',
    'Notification',
    'Change Password',
  ];
  var iconsname = [
    "assets/images/Lg.png",
    "assets/images/bell 2.png",
    "assets/images/lock.png",
  ];
  var routs = [
    Languages(),
    NotificationPage(),
    ChangePass(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff58186F),
        title: Text(
          "Setting",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ProfileView();
                },
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20,bottom: 0,top: 20),
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                 
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.person_outline,
                              size: 33,),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Profile",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
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
                      margin: EdgeInsets.only(bottom: 15.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
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
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return LoginPage();
                },
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                  margin: EdgeInsets.only(bottom: 20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.logout),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "Log Out",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
