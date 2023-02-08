import 'package:flutter/material.dart';

class MoreInFo extends StatelessWidget {
  const MoreInFo(
      {super.key,
      required this.name,
      required this.age,
      required this.gender,
      required this.distance,
      required this.img});
  final String img;
  final String name;
  final String age;
  final String gender;
  final String distance;
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
              height: 20,
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
                          height: 230,
                          padding:
                              EdgeInsets.only(top: 10, left: 10, right: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row( 
                                children:  [
                                  Container(
                                  child: Image(image: AssetImage(img,)),
                                    height: 140,
                                    width: 133,
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
                                          name,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          age,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          gender,
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          distance,
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
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                // color: Colors.black.withOpacity(0.2),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Information:",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Hi, i'm Ocean i have  work experience 3 years ",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
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
                height: 220,
                padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Comments',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey.shade900,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0,
                      ),
                    ),
                    ListView(
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      children: [
                        Divider(
                          thickness: 2,
                        ),
                        _tile('User 1', 'very good', Icons.person_2_sharp),
                        Divider(
                          thickness: 2,
                        ),
                        _tile('User 1', 'awesomee', Icons.person_4),
                        Divider(
                          thickness: 2,
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => ConfirmCleaner(),
                  //     ),
                  //   );
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

Container _tile(String title, String subtitle, IconData icon) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      //  borderRadius: BorderRadius.circular(15),
    ),
    child: ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 13,
          )),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.purple[500],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.star, size: 16, color: Colors.yellow),
          Icon(Icons.star, size: 16, color: Colors.yellow),
          Icon(Icons.star, size: 16, color: Colors.yellow),
          const Icon(Icons.star, size: 16, color: Colors.black),
          const Icon(Icons.star, size: 16, color: Colors.black),
        ],
      ),
    ),
  );
}
