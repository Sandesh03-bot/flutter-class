import 'package:app/portfolio.dart';
import 'package:app/portfolio_signup.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PortfolioLogin extends StatefulWidget {
  const PortfolioLogin({super.key});

  @override
  State<PortfolioLogin> createState() => _PortfolioLoginState();
}

class _PortfolioLoginState extends State<PortfolioLogin> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController enterednamecontroller = TextEditingController();
    TextEditingController enteredpwcontroller = TextEditingController();

    Future<void> onLogin(BuildContext context) async {
      final pref = await SharedPreferences.getInstance();

      String? saveusername = pref.getString("person_name");
      String? savepasswordname = pref.getString("person_password");

      String? writtenname = enterednamecontroller.text;
      String? writtenpassword = enteredpwcontroller.text;

      if (writtenname == saveusername && savepasswordname == writtenpassword) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                PortfolioHome(name: enterednamecontroller.text),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Invalid Credentials! Try again")),
        );
      }
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsGeometry.all(12.0),
                child: SizedBox(
                  width: 400,
                  height: 600,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: CircleAvatar(
                                radius: 60,
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Icon(Icons.person, size: 90),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsetsGeometry.only(
                                top: 12.0,
                                right: 8.0,
                                left: 8.0,
                              ),
                              child: TextFormField(
                                controller: enterednamecontroller,
                                decoration: InputDecoration(
                                  labelText: "Username",
                                  hintText: "Enter your Username",
                                  border: OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Username cannot be empty";
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsGeometry.only(
                                top: 12.0,
                                left: 8.0,
                                right: 8.0,
                              ),
                              child: TextFormField(
                                controller: enteredpwcontroller,
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  hintText: "Enter your Password",
                                  border: OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Password cannot be empty";
                                  }
                                  return null;
                                },
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: TextButton(
                                style: ButtonStyle(
                                  overlayColor: WidgetStateProperty.all(
                                    Colors.transparent,
                                  ),
                                  shadowColor: WidgetStateProperty.all(
                                    Colors.transparent,
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Forget Password",
                                  style: TextStyle(color: Colors.blue),
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
                                    builder: (context) => PortfolioSignup(),
                                  ),
                                );
                              },
                              child: Text(
                                "Create an Account",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsetsGeometry.all(12),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(190, 50),
                                  backgroundColor: Colors.lightBlueAccent,
                                  foregroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    onLogin(context);
                                  }
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
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
