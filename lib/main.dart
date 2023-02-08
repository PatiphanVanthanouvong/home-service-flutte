import 'package:flutter/material.dart';
import 'package:home_service_app/LoginPage/loginpage.dart';
import 'IntroPage/intropage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Color(0xFF6F35A5),
      title: 'Home Service',
      theme: ThemeData(
          primaryColor: Color(0xFF6F35A5),
          scaffoldBackgroundColor: Color(0xFFF1E6FF),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: Color(0xFF6F35A5),
              shape: const StadiumBorder(),
              maximumSize: const Size(double.infinity, 56),
              minimumSize: const Size(double.infinity, 56),
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Colors.white,
            iconColor: Color(0xFF6F35A5),
            prefixIconColor: Color(0xFF6F35A5),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide.none,
            ),
          )),
      initialRoute: '/',
      routes: {
        '/Login': (context) => const LoginPage(),
        '/Intro': (context) => const IntroPage(),
      },
      home: IntroPage(),
    );
  }
}
