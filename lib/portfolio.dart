import 'package:app/portfolio_user.dart';
import 'package:flutter/material.dart';

class PortfolioHome extends StatefulWidget {
  final String name;
  // final String email;
  const PortfolioHome({super.key, required this.name});

  @override
  State<PortfolioHome> createState() => _PortfolioHomeState();
}

class _PortfolioHomeState extends State<PortfolioHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Home",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "About",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Projects",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Blog",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightBlueAccent,
                        foregroundColor: Colors.white,
                        shape: CircleBorder(),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                PortfolioUser(name: widget.name),
                          ),
                        );
                      },
                      label: Icon(Icons.person),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsetsGeometry.only(top: 30.0, bottom: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(
                        255,
                        228,
                        223,
                        223,
                      ), // shadow color
                      blurRadius: 6,
                      spreadRadius: 10,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 150,
                  child: SizedBox(
                    child: Image.asset(
                      'assets/images/mero_photo-nobg.png',
                      height: 350,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsetsGeometry.all(12.0),
              child: Text(
                "My Clients All Over The World",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            Padding(
              padding: EdgeInsetsGeometry.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/discord.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/linkedin.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/medium.png',
                    height: 100,
                    width: 100,
                  ),
                  Image.asset(
                    'assets/images/tumblr.png',
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
            ),

            Container(
              height: 1173,
              width: double.infinity,
              color: const Color.fromARGB(255, 245, 236, 236),
              padding: EdgeInsetsGeometry.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "My work Process",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsGeometry.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsetsGeometry.all(8.0),
                          child: Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.celebration),
                                      Text(
                                        "01",
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsetsGeometry.only(
                                    right: 20.0,
                                    left: 20.0,
                                    bottom: 25.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Introduction",
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsetsGeometry.all(8.0),
                          child: Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.person_pin_rounded),
                                      Text(
                                        "02",
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsetsGeometry.only(
                                    right: 20.0,
                                    left: 20.0,
                                    bottom: 25.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "UX Design",
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsetsGeometry.all(8.0),
                          child: Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.design_services),
                                      Text(
                                        "03",
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsetsGeometry.only(
                                    right: 20.0,
                                    left: 20.0,
                                    bottom: 25.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "UI Design",
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsetsGeometry.all(8.0),
                          child: Card(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(Icons.local_shipping),
                                      Text(
                                        "04",
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsetsGeometry.only(
                                    right: 20.0,
                                    left: 20.0,
                                    bottom: 25.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Delivery",
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsetsGeometry.only(top: 8.0),
              child: Container(
                height: 730,
                width: double.infinity,
                color: const Color.fromARGB(255, 0, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Have a project in mind?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              wordSpacing: 3,
                            ),
                          ),
                          Text(
                            "Let's work together!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              wordSpacing: 3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.all(12.0),
                      child: Text(
                        "Let's bring your idea to life together.",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsetsGeometry.all(12.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          fixedSize: Size(200, 50),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Let's work together"),
                            Icon(Icons.arrow_right_alt, size: 25),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Divider(),
                    ),

                    Padding(
                      padding: EdgeInsetsGeometry.all(20.0),
                      child: Column(
                        children: [
                          Icon(Icons.email, size: 50, color: Colors.white),
                          Text(
                            "Email Address",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Contact@dummy.com",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.all(20.0),
                      child: Column(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 50,
                            color: Colors.white,
                          ),
                          Text(
                            "Location",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "123 Main Street",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.all(20.0),
                      child: Column(
                        children: [
                          Icon(Icons.phone, size: 50, color: Colors.white),
                          Text(
                            "Phone Number",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "123-456-7890",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsetsGeometry.all(12.0),
                      child: Divider(),
                    ),
                    Padding(
                      padding: EdgeInsetsGeometry.all(12.0),
                      child: Text(
                        "© 2024 Your Name. All rights reserved.",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
