import 'package:flutter/material.dart';

class Userapp extends StatefulWidget {
  final String username;
  final String password;

  const Userapp({super.key, required this.username, required this.password});

  @override
  State<Userapp> createState() => _UserappState();
}

class _UserappState extends State<Userapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("username: ${widget.username}"),
          Text("password: ${widget.password}"),
        ],
      ),
    );
  }
}