import 'package:flutter/material.dart';

class Truecaller extends StatefulWidget {
  const Truecaller({super.key});

  @override
  State<Truecaller> createState() => _TruecallerState();
}

class _TruecallerState extends State<Truecaller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "truecaller",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.italic,
                ),
              ),
              CircleAvatar(child: Icon(Icons.person)),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome,", style: TextStyle(color: Colors.grey)),
                  Text(
                    "Alex",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search a number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Text(
                  "Recents",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(child: Icon(Icons.remove_circle_outline)),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          children: [
                            Text(
                              "Scammer",
                              style: TextStyle(color: Colors.black),
                            ),
                            Row(children: [Icon(Icons.search), Text("(833)")]),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 23.0),
                    child: Text(
                      "10:36 AM",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 128, 127, 127),
                      ),
                    ),
                  ),
                  Icon(Icons.chevron_right, color: Colors.grey),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Text(
                  "Discover",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                discoverWidget(Icons.person, "Who viewed my profile"),
                discoverWidget(Icons.sms, "SMS Filtering"),
                discoverWidget(Icons.notification_add, "Announcements"),
              ],
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                discoverWidget(Icons.people_alt_rounded, "Community"),
                discoverWidget(Icons.sms_failed_rounded, "How to report calls"),
                // Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget discoverWidget(IconData icon, String title) {
    return Flexible(
      child: SizedBox(
        width: 130,
        height: 115,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              SizedBox(
                height: 70,
                width: 90,
                child: Card(child: Icon(icon, size: 20)),
              ),
              const SizedBox(height: 5),
              Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 2,
                softWrap: true,
                // overflow: TextOverflow.fade,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
