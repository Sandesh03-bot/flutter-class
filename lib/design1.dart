import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Goodmorning,",
                      style: TextStyle(color: Colors.purple, fontSize: 18),
                    ),
                    Text(
                      "Jhon Doe",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const Image(
                  image: AssetImage("assets/images/user.webp"),
                  height: 80,
                  width: 80,
                ),
              ],
            ),
        
            const SizedBox(height: 20),
        
            Container(
              // height: 200,
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // First card
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.purple.shade300,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.description, color: Colors.white, size: 30),
                        SizedBox(height: 8),
                        Text(
                          "12 Tasks",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
            
                  // Second card
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.work, color: Colors.white, size: 30),
                        SizedBox(height: 8),
                        Text(
                          "In Progress",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
            
                  // Third card
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.green.shade300,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.check_circle, color: Colors.white, size: 30),
                        SizedBox(height: 8),
                        Text(
                          "Completed",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              // height: 263,
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("My Tasks"),
                      Text("View All"),
                    ],
                  ),
                  SizedBox(height: 8),
                  Container(
                    // height: 65,
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 230, 173, 240),
                            borderRadius: BorderRadius.circular(8),
                            
                          ),
                          child: Icon(Icons.text_snippet, color: const Color.fromARGB(255, 150, 51, 168))
                          ),
                        SizedBox(width: 12),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text("Design mobile app", style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(width: 8),
                            Text("UI/UX Design",style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 230, 173, 240),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text("In Progress",style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 155, 54, 173))),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    // height: 65,
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 230, 173, 240),
                            borderRadius: BorderRadius.circular(8),
                            
                          ),
                          child: Icon(Icons.text_snippet, color: const Color.fromARGB(255, 150, 51, 168))
                          ),
                        SizedBox(width: 12),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text("Design mobile app", style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(width: 8),
                            Text("UI/UX Design",style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 230, 173, 240),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text("In Progress",style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 155, 54, 173))),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    // height: 65,
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 230, 173, 240),
                            borderRadius: BorderRadius.circular(8),
                            
                          ),
                          child: Icon(Icons.text_snippet, color: const Color.fromARGB(255, 150, 51, 168))
                          ),
                        SizedBox(width: 12),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text("Design mobile app", style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(width: 8),
                            Text("UI/UX Design",style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 230, 173, 240),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text("In Progress",style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 155, 54, 173))),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    // height: 65,
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 230, 173, 240),
                            borderRadius: BorderRadius.circular(8),
                            
                          ),
                          child: Icon(Icons.text_snippet, color: const Color.fromARGB(255, 150, 51, 168))
                          ),
                        SizedBox(width: 12),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text("Design mobile app", style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(width: 8),
                            Text("UI/UX Design",style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 230, 173, 240),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text("In Progress",style: TextStyle(fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 155, 54, 173))),
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}