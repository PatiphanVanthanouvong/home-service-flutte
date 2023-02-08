import 'package:flutter/material.dart';
import 'package:home_service_app/Cleaning/Confirm.dart';
import 'package:home_service_app/Cleaning/moreinfo.dart';

class Cleaner extends StatefulWidget {
  const Cleaner({super.key});

  @override
  State<Cleaner> createState() => _CleanerState();
}

class _CleanerState extends State<Cleaner> {
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
  var _confirmrouts = [
    ConfirmCleaner(),
    ConfirmCleaner(),
    ConfirmCleaner(),
  ];
  var routs = [
    MoreInFo(
        img: "assets/images/ocaen.png",
        age: "Age: 28",
        name: "name: Ocean",
        gender: "Gender: Female",
        distance: "Distance 2.4km"),
    MoreInFo(
        age: "Age: 21",
        img: "assets/images/emmaa.png",
        name: "name: Emma",
        gender: "Gender: Female",
        distance: "Distance 1.3 km"),
    MoreInFo(
        img: "assets/images/jame.png",
        age: "Age: 32",
        name: "name: Jame",
        gender: "Gender: Male",
        distance: "Distance 5.7 km"),
  ];
  var _img = [
    "assets/images/ocaen.png",
    "assets/images/emmaa.png",
    "assets/images/jame.png",
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
              height: 40,
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
            Container(
              child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 3,
                  padding: EdgeInsets.only(top: 0, left: 30, right: 30),
                  separatorBuilder: (context, _) => SizedBox(
                        height: 16,
                      ),
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => _confirmrouts[index]));
                        },
                        child: Container(
                          width: 336,
                          height: 166,
                          padding: EdgeInsets.only(top: 0, left: 10, right: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                height: 140,
                                width: 133,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Image.asset(
                                  _img[index],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: 10, left: 15, right: 0),
                                height: 135,
                                width: 162,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Rating",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(Icons.star,
                                                    size: 16,
                                                    color: Colors.yellow),
                                                Icon(Icons.star,
                                                    size: 16,
                                                    color: Colors.yellow),
                                                Icon(Icons.star,
                                                    size: 16,
                                                    color: Colors.yellow),
                                                const Icon(Icons.star,
                                                    size: 16,
                                                    color: Colors.black),
                                                const Icon(Icons.star,
                                                    size: 16,
                                                    color: Colors.black),
                                              ],
                                            ),
                                          ],
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    routs[index],
                                              ),
                                            );
                                          },
                                          child: Container(
                                            height: 27,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                color: Colors.purple,
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Center(
                                              child: Text(
                                                "More Info",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
