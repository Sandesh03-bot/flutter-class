import 'package:app/user_authentication_login.dart';
import 'package:flutter/material.dart';

class UserAuthenticationSignup extends StatefulWidget {
  const UserAuthenticationSignup({super.key});

  @override
  State<UserAuthenticationSignup> createState() => _UserAuthenticationSignupState();
}

class _UserAuthenticationSignupState extends State<UserAuthenticationSignup> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController usercontroller = TextEditingController();
    final TextEditingController emailcontroller = TextEditingController();
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
                        child:
                         Padding(
                           padding: const EdgeInsets.only(right:8.0,left:6,bottom: 4.0),
                           child: Icon(Icons.person,color: Colors.blue,size: 90),
                         ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Signup", style: TextStyle(color: Colors.purpleAccent,fontSize: 30,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextField(
                            controller: usercontroller,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsetsGeometry.only(top:3),
                               child: Icon(Icons.person, color: Colors.purpleAccent),
                               ),
                              labelText: "Username",
                              hintText: "Enter Your Username",
                              border: OutlineInputBorder(borderSide: BorderSide(), borderRadius: BorderRadius.all(Radius.circular(4.0)))
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextField(
                            controller: emailcontroller,
                            decoration: InputDecoration(
                              
                              prefixIcon: Padding(
                                padding: const EdgeInsetsGeometry.only(top:3),
                               child: Icon(Icons.email, color: Colors.purpleAccent),
                               ),
                              labelText: "Email",
                              hintText: "Enter Your Email",
                              border: OutlineInputBorder(borderSide: BorderSide(), borderRadius: BorderRadius.all(Radius.circular(4.0)))
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
                                padding: const EdgeInsetsGeometry.only(top:3),
                               child: Icon(Icons.lock, color: Colors.purpleAccent),
                               ),
                              labelText: "Password",
                              hintText: "Enter Your Password",
                              border: OutlineInputBorder(borderSide: BorderSide(), borderRadius: BorderRadius.all(Radius.circular(4.0)))
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
                          onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Login(
                            username: usercontroller.text,
                            password: passcontroller.text,
                          )));
                        }, child: Text("Already have an account", style: TextStyle(color: Colors.blue),
                            )),
                  
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SizedBox(
                                width: 500,
                                height: 50,
                                child: ElevatedButton(
                                style:ElevatedButton.styleFrom(backgroundColor: Colors.blue,elevation: 5, shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12))),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login(
                                    username: usercontroller.text,
                                    password: passcontroller.text,

                                  )));
                                }, child: Text("Submit",style: TextStyle(color:Colors.black),)),
                              ),
                            )
                      ],
                    ),
                  ),
                ),
              )
              )
            ],
          ),
        ),
      ),
    );
  }
}