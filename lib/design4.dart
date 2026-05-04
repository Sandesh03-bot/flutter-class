import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi,John!👋",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text("Welcome back"),
                    ],
                  ),
                  Icon(Icons.notifications),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsetsGeometry.all(8.0),
              child: SizedBox(
                width: 450,
                height: 170,
                child: Card(
                  elevation: 10,
                  color: const Color.fromARGB(255, 48, 160, 252),
                  child: Padding(
                    padding: EdgeInsetsGeometry.only(left: 30.0, right: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Wallet Balance",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                            Text(
                              "\$1250.00",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "View Details",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                                Icon(Icons.chevron_right, color: Colors.white),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.account_balance_wallet,
                          color: const Color.fromARGB(255, 189, 207, 253),
                          size: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsetsGeometry.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: const Text(
                        "Quick Actions",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 60,
                            width: 60,
                            child: Card(
                              color: const Color.fromARGB(255, 160, 209, 250),
                              child: Icon(Icons.send),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            width: 60,
                            child: Card(
                              color: const Color.fromARGB(255, 160, 209, 250),
                              child: Icon(Icons.download),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            width: 60,
                            child: Card(
                              color: const Color.fromARGB(255, 160, 209, 250),
                              child: Icon(Icons.add_circle_outline),
                            ),
                          ),
                          SizedBox(
                            height: 60,
                            width: 60,
                            child: Card(
                              color: const Color.fromARGB(255, 160, 209, 250),
                              child: Icon(Icons.more_horiz),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsetsGeometry.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Transactions",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                height: 173,
                width: 350,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      // Transaction 1
                      SizedBox(
                        height: 55,
                        width: double.infinity,
                        child: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/amazon.webp",
                                      height: 30,
                                      width: 30,
                                    ),
                                    const SizedBox(width: 15),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text("Amazon"),
                                        Text(
                                          "Shopping",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Text("-\$60.00"),
                                    Text("May 12"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // Transaction 2
                      SizedBox(
                        height: 55,
                        width: double.infinity,
                        child: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/starbucks.webp",
                                      height: 30,
                                      width: 30,
                                    ),
                                    const SizedBox(width: 15),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text("Starbucks"),
                                        Text(
                                          "Food & Drink",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Text("-\$5.25"),
                                    Text("May 12"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // Transaction 3
                      SizedBox(
                        height: 55,
                        width: double.infinity,
                        child: Card(
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor: const Color.fromARGB(
                                        255,
                                        198,
                                        255,
                                        200,
                                      ),
                                      child: Icon(
                                        Icons.wallet_travel_outlined,
                                        size: 20,
                                        color: const Color.fromARGB(
                                          255,
                                          1,
                                          166,
                                          7,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text("Salary"),
                                        Text(
                                          "Income",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Text("+\$1500.00"),
                                    Text("May 10"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
