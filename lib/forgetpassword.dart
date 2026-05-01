import 'package:app/user_authentication_login.dart';
import 'package:flutter/material.dart';

class Forget extends StatefulWidget {
  final String username;
  final String password;
  const Forget({super.key, required this.username, required this.password});

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    TextEditingController usercontroller = TextEditingController();
    TextEditingController passcontroller = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 650,
              child: Card(
                elevation: 15,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("username: ${widget.username}"),
                      ),                 
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("Password: ${widget.password}"),
                      ),   
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ElevatedButton(
                          style: TextButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 72, 172, 255),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(6)),
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Login(
                              username: usercontroller.text,
                              password: passcontroller.text,
                            )));
                        }, child: Text("Back to login", style: TextStyle(color: Colors.black),)),
                      )               
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}