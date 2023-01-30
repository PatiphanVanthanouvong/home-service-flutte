import 'package:flutter/material.dart';

class ChangePass extends StatefulWidget {
  const ChangePass({super.key});

  @override
  State<ChangePass> createState() => _ChangePassState();
}

class _ChangePassState extends State<ChangePass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Color(0xff58186F),
        title: Text("Change Password",
        style: TextStyle(
          fontSize: 25
        ),),
        centerTitle: true,
        toolbarHeight: 100,
       ),
       body: SizedBox(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: [
                        SizedBox(height: 50),
                        
                      
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
                             
                               
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: TextFormField(
                                    textInputAction: TextInputAction.done,
                                    obscureText: true,
                                    cursorColor: Colors.purple[300],
                                    decoration: InputDecoration(
                                      hintText: "Current Password",
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Icon(Icons.lock_outline_rounded),
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
                                      hintText: "New password",
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Icon(Icons.lock_open_outlined),
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
                                        child: Icon(Icons.lock_reset_rounded),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16 / 2),
                                
                                // AlreadyHaveAnAccountCheck(
                                //   login: false,
                                //   press: () {
                                //     Navigator.push(
                                //       context,
                                //       MaterialPageRoute(
                                //         builder: (context) {
                                //           return LoginScreen();
                                //         },
                                //       ),
                                //     );
                                //   },
                                // ),
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
                    Column(
                      children: [
                      
                        SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 38),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Change Password".toUpperCase()),
                          ),
                        ),
                   
                       
                      ],
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