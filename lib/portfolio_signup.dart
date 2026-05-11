import 'package:app/portfolio_login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PortfolioSignup extends StatefulWidget {
  const PortfolioSignup({super.key});

  @override
  State<PortfolioSignup> createState() => _PortfolioSignupState();
}

class _PortfolioSignupState extends State<PortfolioSignup> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController namecontroller = TextEditingController();
    final TextEditingController mailcontroller = TextEditingController();
    final TextEditingController pwcontroller = TextEditingController();

    Future<void> onRegister(BuildContext context) async {
      final pref = await SharedPreferences.getInstance();

      await pref.setString("person_name", namecontroller.text);
      await pref.setString("person_email", mailcontroller.text);
      await pref.setString("person_password", pwcontroller.text);

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Signup successful")));
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
                            child: TextField(
                              controller: namecontroller,
                              decoration: InputDecoration(
                                labelText: "Username",
                                hintText: "Enter your Username",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsGeometry.only(
                              top: 12.0,
                              left: 8.0,
                              right: 8.0,
                            ),
                            child: TextField(
                              controller: mailcontroller,
                              decoration: InputDecoration(
                                labelText: "Email",
                                hintText: "Enter your Email",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsGeometry.only(
                              top: 12.0,
                              left: 8.0,
                              right: 8.0,
                            ),
                            child: TextField(
                              controller: pwcontroller,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Password",
                                hintText: "Enter your Password",
                                border: OutlineInputBorder(),
                              ),
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
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PortfolioLogin(),
                                  ),
                                );
                              },
                              child: Text(
                                "Already have an account !",
                                style: TextStyle(color: Colors.blue),
                              ),
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
                                onRegister(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PortfolioLogin(),
                                  ),
                                );
                              },
                              child: Text(
                                "Register",
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
            ],
          ),
        ),
      ),
    );
  }
}
