// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  var tName = [
    'ທ້າວ ສິນທະລາ ປັນຍານວົງ',
    'ທ້າວ ວັນນະໄຊ ຂັດຕິຍະລາດ',
    'ນາງ ນໍ້າຝົນ ແສງມະນ',
    'ນາງ ຈອນໂລບີີ້ ອິນທະວົງ',
  ];
  var _role = [
    'ອອກແບບ',
    'ຂຽນໂປຣແກຣມ',
    'ຊອກຂໍ້ມູນ ແລະ ຂຽນບົດລາຍງານຄວາມຄືບໜ້າ',
    'ຊອກຂໍ້ມູນ ແລະ ຂຽນບົດລາຍງານຄວາມຄືບໜ້າ',
  ];
  var fb = [
    "assets/images/fb.png",
    "assets/images/fb.png",
    "assets/images/fb.png",
    "assets/images/fb.png",
  ];
  var insta = [
    "assets/images/instagram.png",
    "assets/images/instagram.png",
    "assets/images/instagram.png",
    "assets/images/instagram.png",
  ];
  var iconsname = [
    "assets/images/Bew.jpg",
    "assets/images/Aiy.jpg",
    "assets/images/Johnloby.jpg",
    "assets/images/Numfon.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(88, 24, 111, 1),
        title: Text(
          "About Us",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Text(
                      "Objective",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Lorem ting and typy. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: Divider(
                  thickness: 2,
                )),
                SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "Our Team",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: Divider(
                  thickness: 2,
                )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: tName.length,
                  separatorBuilder: (context, _) => SizedBox(),
                  itemBuilder: (context, index) => Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
                      margin: EdgeInsets.only(bottom: 15.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                maxRadius: 30,
                                backgroundImage: AssetImage(
                                  iconsname[index],
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    tName[index],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "  Student, CEIT .  NOUL",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  Text(
                                      _role[index],
                                    
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Image.asset(
                                fb[index],
                                width: 35,
                                height: 35,
                              ),
                              Image.asset(
                                insta[index],
                                width: 25,
                                height: 25,
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: Divider(
                  thickness: 2,
                )),
                SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "ສອນໂດຍ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: Divider(
                  thickness: 2,
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      maxRadius: 70,
                      backgroundImage: AssetImage(
                        "assets/images/teacher.jpg",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "ອາຈານ ສະຫວາດ ໄຊປະດິດ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
