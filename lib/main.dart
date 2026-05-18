// import 'package:app/design6.dart';
import 'package:app/design8.dart';
import 'package:app/truecaller.dart';
// import 'package:app/real_app_athentication.dart';
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
      home: const Truecaller(),
    );
  }
}
