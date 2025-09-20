import 'package:flutter/material.dart';
import 'package:plant_site/Screen/Page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<StatefulWidget> createState() => _Page1State();
}


class _Page1State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromARGB(255, 160, 195, 130),//
              const Color.fromARGB(255, 212, 220, 204),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Image.asset("assets/plant2.png"),
            ),
            SizedBox(height: 40),

            Text("Enjoy Your ", style: TextStyle(fontSize: 35)),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("life With ", style: TextStyle(fontSize: 35)),
                SizedBox(width: 5),
                Text(
                  "Plants ",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            SizedBox(height: 40),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );
              },
              child: Container(
                height: 55,
                width: 370,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color.fromRGBO(62, 102, 24, 1),
                      const Color.fromRGBO(124, 180, 70, 1),
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                    textAlign: TextAlign.center,
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
