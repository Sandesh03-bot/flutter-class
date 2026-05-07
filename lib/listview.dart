import 'package:app/locallogin.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    void handleLogout(BuildContext context) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Logout"),
            content: Text("Are you sure you  want to logout"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel"),
              ),
              TextButton(
                onPressed: () async {
                  SharedPreferences pref =
                      await SharedPreferences.getInstance();
                  await pref.remove('Username');
                  await pref.remove('password');

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Login data has been removeed")),
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Localstoragelogin(),
                    ),
                  );
                },
                child: Text("Yes"),
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              handleLogout(context);
            },
            child: Text("Logout"),
          ),
        ],
      ),
    );
  }
}
