import 'package:flutter/material.dart';

class Languages extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
      backgroundColor: Color(0xff58186F),
        title: Text("Language",
        style: TextStyle(
          fontSize: 25
        ),),
        centerTitle: true,
        toolbarHeight: 100,
       ),

      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
                Container(
                           padding:
                               EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
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
                                       Image.asset(
                                   "assets/images/laos.png",
                                    width: 35,
                                    height: 35,
                                  ),
                                       SizedBox(
                                         width: 10.0,
                                       ),
                                       Text(
                                        "ລາວ",
                                         style: TextStyle(
                                             fontSize: 22,
                                             fontWeight: FontWeight.w600),
                                       ),
                                     ],
                                   ),
                             
                                 ],
                               ),
                             ],
                           )),
                Container(
                           padding:
                               EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
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
                                        Image.asset(
                                   "assets/images/English.png",
                                    width: 35,
                                    height: 35,
                                  ),
                                       SizedBox(
                                         width: 10.0,
                                       ),
                                       Text(
                                        "English",
                                         style: TextStyle(
                                             fontSize: 22,
                                             fontWeight: FontWeight.w600),
                                       ),
                                     ],
                                   ),
                             
                                 ],
                               ),
                             ],
                           )),
                Container(
                           padding:
                               EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
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
                                     Image.asset(
                                   "assets/images/thailand.png",
                                    width: 35,
                                    height: 35,
                                  ),
                                       SizedBox(
                                         width: 10.0,
                                       ),
                                       Text(
                                        "ไทย",
                                         style: TextStyle(
                                             fontSize: 22,
                                             fontWeight: FontWeight.w600),
                                       ),
                                     ],
                                   ),
                             
                                 ],
                               ),
                             ],
                           )),
            ],
          ),
        ),
      ),
    );
  }
}