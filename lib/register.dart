import 'login.dart';
import 'package:flutter/material.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: usernameController,
            obscureText: true,
            decoration: InputDecoration(labelText: "username"),
          ),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(labelText: "Password"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(
                    username: usernameController.text,
                    password: passwordController.text,
                  ),
                ),
              );
            },
            child: Text("login"),
          ),
        ],
      ),
    );
  }
}
