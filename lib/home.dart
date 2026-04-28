import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool switchValue = false;
  bool anotherSwitchValue = false;
  bool checked = false;
  bool anotherChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.blue,
            width: double.infinity,
            height: 80,
            child: Row(
              children: [
                // User Image
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/user.webp'),
                ),
                const SizedBox(width: 12),
                // Text
                const Text(
                  "User Setting",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Image.asset(
              'assets/images/user.webp',
              width: 70,
              height: 70,
            ),
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
          ),
          const SizedBox(width: 12),

          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: const Text("Username"),
                ),
                const TextField(
                  decoration: InputDecoration(
                  border: OutlineInputBorder(
                  borderRadius:
                    BorderRadius.zero, // Removes rounded corners
                    borderSide: BorderSide(color: Colors.black),
                  ),
                    labelText: "Enter your name",
                    hintText: 'e.g. John Doe',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),

          Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: Column(
              children: [
                Align(alignment: Alignment.topLeft, child: const Text("Email")),
                const TextField(
                  decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.zero, // Removes rounded corners
                    borderSide: BorderSide(color: Colors.black),
                  ),
                    labelText: "Enter your email",
                    hintText: 'e.g. john.doe@example.com',
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.coffee, size: 32, color: Colors.blue),
                    const SizedBox(width: 8),
                    const Text("Notifications"),
                  ],
                ),
              Switch(
                value: switchValue,
                onChanged: (val) => setState(() => switchValue = val)
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.star_half, size: 32, color: Colors.grey,),
                    const SizedBox(width: 8),
                    const Text("Dark mode", style: TextStyle(color: Colors.grey),),
                  ],
                ),
                Switch(
                  value: anotherSwitchValue,
                  onChanged: (val) => setState(() => anotherSwitchValue = val),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: checked,
                onChanged: (val) => setState(() => checked = val!),
              ),
              const Text("I agree to  terms & conditions"),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: anotherChecked,
                onChanged: (val) => setState(() => anotherChecked = val!),
                side: const BorderSide(color: Colors.grey),
                ),
              const Text("Subscribe to newsletter", style: TextStyle(color: Colors.grey)),
            ],
          ),


          Container(
            width: double.infinity,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.purple, width: 2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.image, size: 32, color: Colors.purple),
                SizedBox(width: 8),
                Text(
                  "Tap to choose a profile photo",
                  style: TextStyle(color: Colors.purple),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),

          Container(
            width: double.infinity,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 2),
              borderRadius: BorderRadius.circular(12),
              color: Colors.blue
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Save Changes",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}