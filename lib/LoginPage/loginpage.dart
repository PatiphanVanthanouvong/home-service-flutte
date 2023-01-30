import 'package:flutter/material.dart';

import 'package:home_service_app/Mainscreen/HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xff58186F),
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // Positioned(
            //   top: 0,
            //   left: 0,
            //   child: Image.asset(
            //     topImage,
            //     width: 120,
            //   ),
            // ),
            // Positioned(
            //   bottom: 0,
            //   right: 0,
            //   child: Image.asset(bottomImage, width: 120),
            // ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: [
                
                        SizedBox(height: 16 * 2),
                        Row(
                          children: [
                            const Spacer(),
                            Expanded(
                              flex: 7,
                              child: Image.asset("assets/images/logo.png"),
                            ),
                            const Spacer(),
                          ],
                        ),
                        SizedBox(height: 16 * 2),
                      ],
                    ),
                            Text(
                          "LOGIN",
                          style: TextStyle(fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20, letterSpacing: 1),
                        ),
                         SizedBox(height: 16 * 2),
                    Row(
                      children: [
                        Spacer(),
                        Expanded(
                          flex: 8,
                          child: Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                  cursorColor: Color(0xFF6F35A5),
                                  onSaved: (email) {},
                                  decoration: InputDecoration(
                                    hintText: "Your email",
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Icon(Icons.person),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: TextFormField(
                                    textInputAction: TextInputAction.done,
                                    obscureText: true,
                                    cursorColor: Color(0xFF6F35A5),
                                    decoration: InputDecoration(
                                      hintText: "Your password",
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(16),
                                        child: Icon(Icons.lock),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Hero(
                                  tag: "login_btn",
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
                                    child: Text(
                                      "Login".toUpperCase(),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                // AlreadyHaveAnAccountCheck(
                                //   press: () {
                                //     Navigator.push(
                                //       context,
                                //       MaterialPageRoute(
                                //         builder: (context) {
                                //           return SignUpScreen();
                                //         },
                                //       ),
                                //     );
                                //   },
                                // ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
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
