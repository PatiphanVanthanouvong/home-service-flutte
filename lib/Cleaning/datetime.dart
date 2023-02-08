import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import 'cleaner.dart';

class DateAndTime extends StatefulWidget {
  const DateAndTime({super.key});

  @override
  State<DateAndTime> createState() => _DateAndTimeState();
}

class _DateAndTimeState extends State<DateAndTime> {
  TextEditingController dateInput = TextEditingController();
  final _timeC = TextEditingController();
  TimeOfDay timeOfDay = TimeOfDay.now();

  Future displayTimePicker(BuildContext context) async {
    var time = await showTimePicker(
      context: context,
      initialTime: timeOfDay,
      builder: (context, child) => Theme(
        data: ThemeData().copyWith(
            colorScheme: ColorScheme.light(
          primary: Color(0xFF6F35A5), // header background color
          onPrimary: Colors.white, // header text color
          onSurface: Colors.purple.shade500,
        )),
        child: child!,
      ),
    );

    if (time != null) {
      setState(() {
        _timeC.text = "${time.hour}:${time.minute}";
      });
    }
  }

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

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
              'Selecte Date\nAnd Time',
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Material(
              borderRadius: BorderRadius.circular(25),
              elevation: 5.0,
              shadowColor: Colors.black,
              child: TextFormField(
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter date.';
                  }
                  return null;
                },
                obscuringCharacter: '•',
                textAlign: TextAlign.center,
                controller: dateInput,
                //editing controller of this TextField
                decoration: InputDecoration(
                  //icon of text field
                  //label text of field

                  hintText: "Choose​ Date",
                  hintStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                //set it true, so that user will not able to edit text
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      builder: (context, child) => Theme(
                            data: ThemeData().copyWith(
                                colorScheme: ColorScheme.light(
                              primary:
                                  Color(0xFF6F35A5), // header background color
                              onPrimary: Colors.white, // header text color
                              onSurface: Colors.purple.shade500,
                            )),
                            child: child!,
                          ),
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2100));

                  if (pickedDate != null) {
                    print(
                        pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                    String formattedDate =
                        DateFormat('dd-MM-yyyy').format(pickedDate);
                    print(
                        formattedDate); //formatted date output using intl package =>  2021-03-16
                    setState(() {
                      dateInput.text =
                          formattedDate; //set output date to TextField value.
                    });
                  } else {}
                },
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Material(
              borderRadius: BorderRadius.circular(25),
              elevation: 5.0,
              shadowColor: Colors.black,
              child: TextFormField(
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2),
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Please enter date.';
                //   }
                //   return null;
                // },

                textAlign: TextAlign.center,
                controller: _timeC,
                //editing controller of this TextField
                decoration: InputDecoration(
                  //icon of text field
                  //label text of field

                  hintText: "Choose​ Time",
                  hintStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                //set it true, so that user will not able to edit text
                onTap: () async => displayTimePicker(context),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          child: Icon(Icons.arrow_forward_ios_outlined),

          backgroundColor: Color(0xFF6F35A5), //

          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Cleaner(),
                ));
          },
        ),
      ),
    );
  }
}
