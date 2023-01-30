import 'package:flutter/material.dart';

import 'package:home_service_app/Mainscreen/DrawPage/SettingPage/settingpage.dart';

import '../Widgets/adslider.dart';
import '../Widgets/gridservice.dart';
import 'DrawPage/about_us.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xFFF1E6FF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff58186F),
        toolbarHeight: 100,
        flexibleSpace: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    color: Colors.white,
                    icon: Icon(
                      Icons.menu,
                    ),
                    iconSize: 40,
                    onPressed: _openDrawer,
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                  ),
                  Container(
                  
                    height: 100,
                    width: 180,
                    child: Image.asset("assets/images/appbar.png"),
                  ),
                  IconButton(
                    color: Colors.yellow,
                    icon: Icon(
                      Icons.notifications,
                    ),
                    iconSize: 40,
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                ],
              ),
              
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           
            Container(
                width: double.infinity,
                height: 210,
                decoration: BoxDecoration(color: Colors.black),
                child: AdSlider()),
            SizedBox(
              height: 30,
            ),
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                      // height: 36,
                    )),
              ),
              Text(
                "Services",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              Expanded(
                child: Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                    child: Divider(
                      thickness: 1,
                      color: Colors.black,
                      // height: 36,
                    )),
              ),
            ]),
            
            GridService(),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[200],
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color:  Color(0xff58186F),
              ),
              child:  SizedBox(
                    height: 70,
                    width: 180,
                    child: Image.asset("assets/images/appbar.png"),
                  ),
            ),
             Container(
              width: double.infinity,
              // color: Color(0xff58186F),
              child: Padding(
                  padding:
                      const EdgeInsets.only(right: 5, left: 5, top: 10, bottom: 10),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    cursorColor: Color(0xFF6F35A5),
                    
                      style: TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                        
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search_rounded,
                      size: 20,),
                    ),
                  ),
                ),
            ),
              Divider(
              thickness: 3,
            ),
            ListTile(
              title: const Text('Favorite'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pushNamed(context, '/Login');
              },
            ),
            Divider(
              thickness: 3,
            ),
            ListTile(
              title: const Text('Help center'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pushNamed(context, '/Intro');
              },
            ),
              Divider(
              thickness: 3,
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SettingPage();
                    },
                  ),
                );
              },
            ),
              Divider(
              thickness: 3,
            ),
            ListTile(
              title: const Text('About us'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AboutUs();
                    },
                  ),
                );
              },
            ),
              Divider(
              thickness: 3,
            ),
          ],
        ),
      ),
    );
  }
}
