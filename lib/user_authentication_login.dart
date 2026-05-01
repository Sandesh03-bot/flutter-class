// import 'package:app/user_authentication_signup.dart';
import 'package:app/forgetpassword.dart';
import 'package:app/user_app.dart';
import 'package:app/user_authentication_signup.dart';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final String username;
  final String password;
  const Login({super.key, required this.username, required this.password});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
  final TextEditingController usercontroller = TextEditingController();
  final TextEditingController passcontroller = TextEditingController();
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 400,
                height: 650,
                child: Card(
                  elevation: 15,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 8.0,
                                left: 6,
                                bottom: 4.0,
                              ),
                              child: Icon(
                                Icons.person,
                                color: Colors.blue,
                                size: 90,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.purpleAccent,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: TextField(
                            controller: usercontroller,
                              decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: const EdgeInsetsGeometry.only(
                                    top: 3,
                                  ),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.purpleAccent,
                                  ),
                                ),
                                labelText: "Username",
                                hintText: "Enter Your Username",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: TextField(
                              controller: passcontroller,
                              obscureText: true,
                              decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: const EdgeInsetsGeometry.only(
                                    top: 3,
                                  ),
                                  child: Icon(
                                    Icons.lock,
                                    color: Colors.purpleAccent,
                                  ),
                                ),
                                labelText: "Password",
                                hintText: "Enter Your Password",
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            style: ButtonStyle(
                              overlayColor: WidgetStateProperty.all(
                                Colors.transparent,
                              ),
                              shadowColor: WidgetStateProperty.all(
                                Colors.transparent,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Forget(
                                    username: usercontroller.text,
                                    password: passcontroller.text,
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              "forget password",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                          TextButton(
                            style: ButtonStyle(
                              overlayColor: WidgetStateProperty.all(
                                Colors.transparent,
                              ),
                              shadowColor: WidgetStateProperty.all(
                                Colors.transparent,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      UserAuthenticationSignup(),
                                ),
                              );
                            },
                            child: Text(
                              "Create an account",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: SizedBox(
                              width: 500,
                              height: 50,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      12,
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Userapp(
                                        username: usercontroller.text,
                                        password: passcontroller.text,
                                      ),
                                    ),
                                  );
                                },
                                
                                child: Text(
                                  "Login",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}