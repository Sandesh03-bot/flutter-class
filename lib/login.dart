import 'design1.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final String user;
  final String pass;
  const LoginPage({super.key, required this.user, required this.pass});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("username : ${widget.user}"),
            Text("password : ${widget.pass}"),
            SizedBox(
              width: 400,
              height: 600,
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(20)),
                    CircleAvatar(
                      radius: 50,
                      child: Icon(Icons.person, size: 80),
                    ),

                    const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const Text(
                      "Please enter your credentials to login",
                      style: TextStyle(color: Colors.grey),
                    ),

                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Enter Your Username",
                          hintText: "Username",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Enter Your Password",
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 400,
                      height: 60,
                      child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NewPage()));
                      }, child: Text("Submit")),
                    )
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
