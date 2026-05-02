// import 'package:app/user_authentication_login.dart';
import 'package:app/design3.dart';
import 'package:app/design4.dart';
// import 'package:app/user_authentication_signup.dart';
import 'package:flutter/material.dart';
// import 'register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Dashboard(),
    );
  }
}