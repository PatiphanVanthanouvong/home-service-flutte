import 'package:flutter/material.dart';
import 'package:home_service_app/Cleaning/bill.dart';

class ConfirmCleaner extends StatefulWidget {
  const ConfirmCleaner({
    super.key,
  });

  @override
  State<ConfirmCleaner> createState() => _ConfirmCleanerState();
}

class _ConfirmCleanerState extends State<ConfirmCleaner> {
  var _img = [
    "assets/images/ocaen.png",
    "assets/images/emmaa.png",
    "assets/images/jame.png",
  ];
  var _distance = [
    "2.4 km",
    "1.3 km",
    "5.7 km",
  ];
  var _gender = [
    "Female",
    "Female",
    "Male",
  ];
  var _age = [
    "28",
    "21",
    "32",
  ];
  var nameC = [
    "Ocean",
    "Emma",
    "Jame",
  ];
  int _selectedRepeat = 0;
  final List<String> _repeat = [
    'assets/images/cash.png',
    'assets/images/bcel.png',
    'assets/images/visa.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
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
            Padding(
              padding: EdgeInsets.only(top: 10.0, right: 15.0, left: 30.0),
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
              height: 10,
            ),
            Container(
              child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 1,
                  padding: EdgeInsets.only(top: 0, left: 30, right: 30),
                  separatorBuilder: (context, _) => SizedBox(
                        height: 16,
                      ),
                  itemBuilder: (context, index) => InkWell(
                        child: Container(
                          width: 336,
                          height: 160,
                          padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 140,
                                    width: 133,
                                    child: Image.asset(
                                      _img[index],
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 10, left: 15, right: 0),
                                    height: 135,
                                    width: 162,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Name: ${nameC[index]}",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Age: ",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              _age[index],
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Gender: ${_gender[index]}",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Distance: ${_distance[index]}",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Container(
                                          // color: Colors.black.withOpacity(0.2),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Clean:",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "Living Room",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                width: 336,
                height: 90,
                padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.more_time_rounded,
                            size: 30, color: Colors.black),
                        SizedBox(
                          width: 10,
                        ),
              
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Date and Time',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey.shade900,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0,
                              ),
                            ),
                            
                            Text(
                          '15:30 \n24/3/2023',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0,
                          ),
                        ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 336,
                height: 70,
                padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined,
                            size: 30, color: Colors.black),
                        SizedBox(
                          width: 10,
                        ),
                        Column(  crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Locations',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey.shade900,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0,
                              ),
                              
                            ),
                                Text(
                          'Nongbone Rd,23 Singha Rd, Vientiane',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0,
                          ),
                        ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 336,
                height: 170,
                padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Method',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey.shade900,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _repeat.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedRepeat = index;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 17),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: _selectedRepeat == index
                                      ? Colors.purple.shade400
                                      : Colors.grey.shade100,
                                ),
                                // color: _selectedRepeat == index ? Colors.white : Colors.grey.shade800
                                margin: EdgeInsets.only(right: 20),
                                child: Center(
                                    child: Image.asset(
                                  _repeat[index],
                                  fit: BoxFit.cover,
                                )),
                              ),
                            );
                          },
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text(
                        '250.000 KIP',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.grey.shade900,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BillCLeaner()));
                },
                child: Text(
                  "Hire",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
