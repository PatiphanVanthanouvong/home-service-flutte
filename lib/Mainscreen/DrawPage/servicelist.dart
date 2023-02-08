import 'package:flutter/material.dart';

class ServiceList extends StatelessWidget {
  const ServiceList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff58186F),
        title: Text(
          "Notification",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(16),
            width: double.infinity,
            height: 87,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset("assets/images/mop.png"),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Cleaning Service',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade900,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Cleaner:',
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0,
                          ),
                        ),
                        Text(
                          ' Ocean ',
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Clean: living Room',
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0,
                          ),
                        ),
                        Text(
                          ' living Room',
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.grey.shade900,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Date & Time: ',
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0,
                          ),
                        ),
                        Text(
                          ' 15:30 &24/3/2023',
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.grey.shade900,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Location:',
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0,
                          ),
                        ),
                        Text(
                          ' Nongbone Rd,23 Singha Rd, Vientiane',
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.grey.shade900,
                            letterSpacing: 0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '12:00 a.m',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
