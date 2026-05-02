import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 400,
              height: 650,
              child: Card(
                color: Colors.white,
                elevation: 15,
                child: Stack(
                  children: [
                    // Top-left arrow
                    Positioned(
                      top: 2,
                      left: 2,
                      child: IconButton(
                        icon: const Icon(Icons.chevron_left, size: 28),
                        onPressed: () {
                          // Add your navigation logic here
                        },
                      ),
                    ),
                    
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundColor: const Color.fromARGB(
                                    255,
                                    156,
                                    217,
                                    246,
                                  ),
                                  child: const Icon(
                                    Icons.person,
                                    size: 80,
                                    color: Colors.blue,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.grey.shade300,
                                      width: 1,
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(6),
                                  child: const Icon(
                                    Icons.camera_alt,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              "Create Account",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text("Fill in the details to get started", style: TextStyle(color: Colors.grey),),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelStyle: TextStyle(
                                          color: Colors.grey
                                        ),
                                        labelText: "Fullname",
                                        prefixIcon: Icon(Icons.person, color: Colors.grey,),                                        border: OutlineInputBorder()
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelStyle: TextStyle(
                                          color: Colors.grey
                                        ),
                                        labelText: "Email",
                                        prefixIcon: Icon(Icons.email, color: Colors.grey,),                                        border: OutlineInputBorder()
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelStyle: TextStyle(
                                          color: Colors.grey
                                        ),
                                        labelText: "Username",
                                        prefixIcon: Icon(Icons.alternate_email, color: Colors.grey,),                                        border: OutlineInputBorder()
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelStyle: TextStyle(
                                          color: Colors.grey
                                        ),
                                        labelText: "Password",
                                        prefixIcon: Icon(Icons.lock, color: Colors.grey,),
                                        suffixIcon: Icon(Icons.remove_red_eye,color: Colors.grey,),
                                        border: OutlineInputBorder()
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelStyle: TextStyle(
                                          color: Colors.grey
                                        ),
                                        labelText: "Confirm Password",
                                        prefixIcon: Icon(Icons.lock, color: Colors.grey,),
                                        suffixIcon: Icon(Icons.remove_red_eye,color: Colors.grey,),
                                        border: OutlineInputBorder()
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SizedBox(
                                width: 300,
                                height: 50,
                                child: ElevatedButton(
                                style: TextButton.styleFrom(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.all(Radius.circular(9))),
                                  backgroundColor: Colors.blue,
                                ),
                                onPressed: (){
                                
                                }, child: Text("Register",style: TextStyle(color: Colors.white),)),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Already have an account?"),
                                Text("Login", style: TextStyle(color: Colors.blue),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                
              ),
            )

          ],
        ),
      ),
    );
  }
}
