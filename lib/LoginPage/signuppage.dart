import 'package:flutter/material.dart';
import 'package:home_service_app/Mainscreen/HomePage.dart';
import 'package:intl/intl.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController dateInput = TextEditingController();
  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: IconButton(
                        color: Colors.black,
                        icon: Icon(
                          Icons.arrow_back_rounded,
                        ),
                        iconSize: 35,
                        onPressed: (() {
                          Navigator.pop(context);
                        }),
                      ),
                             ),
                      Spacer(), 
                            Padding(
                              padding: const EdgeInsets.only(right: 166),
                              child: Text(
                                "Sign Up".toUpperCase(),
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        // Row(
                        //   children: [
                        //     Spacer(),
                        //     Expanded(
                        //       flex: 10,
                        //       child: Container(
                        //         height: 10,
                        //         color: Colors.amber,
                        //       )
                        //     ),
                        //      Spacer(),
                        //   ],
                        // ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Spacer(),
                        Expanded(
                          flex: 7,
                          child: Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                  cursorColor: Colors.purple[300],
                                  onSaved: (email) {},
                                  decoration: InputDecoration(
                                    hintText: "Your email",
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Icon(Icons.person),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16 / 2),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: TextFormField(
                                    textInputAction: TextInputAction.done,
                                    obscureText: true,
                                    cursorColor: Colors.purple[300],
                                    decoration: InputDecoration(
                                      hintText: "Surname",
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Icon(Icons.lock),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: TextFormField(
                                    textInputAction: TextInputAction.done,
                                    obscureText: true,
                                    cursorColor: Colors.purple[300],
                                    decoration: InputDecoration(
                                      hintText: "Your password",
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Icon(Icons.lock),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16 / 2),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: TextFormField(
                                    textInputAction: TextInputAction.done,
                                    obscureText: true,
                                    cursorColor: Colors.purple[300],
                                    decoration: InputDecoration(
                                      hintText: "Confirm password",
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Icon(Icons.lock),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16 / 2),
                                TextField(
                                  controller: dateInput,
                                  //editing controller of this TextField
                                  decoration: InputDecoration(
                                      icon: Icon(Icons
                                          .calendar_today), //icon of text field
                                      //label text of field
                                      hintText: "Your Date of Birth"),
                                  readOnly: true,
                                  //set it true, so that user will not able to edit text
                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                        builder: (context, child) => Theme(
                                              data: ThemeData().copyWith(
                                                  colorScheme:
                                                      ColorScheme.light(
                                                primary: Color(
                                                    0xFF6F35A5), // header background color
                                                onPrimary: Colors
                                                    .white, // header text color
                                                onSurface:
                                                    Colors.purple.shade500,
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
                                          DateFormat('dd-MM-yyyy')
                                              .format(pickedDate);
                                      print(
                                          formattedDate); //formatted date output using intl package =>  2021-03-16
                                      setState(() {
                                        dateInput.text =
                                            formattedDate; //set output date to TextField value.
                                      });
                                    } else {}
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Row(
                        //   children: [
                        //     Spacer(),
                        //     Expanded(
                        //       flex: 10,
                        //       child: Container(
                        //         height: 10,
                        //         color: Colors.amber,
                        //       )
                        //     ),
                        //      Spacer(),
                        //   ],
                        // ),

                        Spacer(),
                      ],
                    ),
                    SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 38),
                      child:   Hero(
                         tag: "signin_btn",
                        child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return HomePage();
                                        },
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.purple[700], elevation: 0),
                                  child: Text(
                                    "Sign Up".toUpperCase(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                      ),
                    ),
                
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
