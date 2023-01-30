import 'package:flutter/material.dart';

class Cleaner extends StatefulWidget {
  const Cleaner({super.key});

  @override
  State<Cleaner> createState() => _CleanerState();
}

class _CleanerState extends State<Cleaner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
            padding: EdgeInsets.only(top: 20.0, right: 15.0, left: 30.0),
            child: Text(
              'Please Selecte \nCleaner',
              style: TextStyle(
                fontSize: 35,
                color: Colors.grey.shade900,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          
        ],
      ),
    );
  }
}