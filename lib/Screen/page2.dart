// ignore: unused_import
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:plant_site/Screen/page1.dart';
import 'package:plant_site/Screen/page3.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<StatefulWidget> createState() => _page2State();
}

class _page2State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 251, 239, 242),
      body: Padding(
        padding: const EdgeInsets.only(top: 120, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //children:BoxDecoration(color: Color.fromRGBO(238, 219, 224, 1));
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page1()),
                );
              },

              child: Padding(
                padding: EdgeInsets.only(left: 0),
                child: Icon(Icons.arrow_back, size: 30),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 120, right: 80),
              child: Container(
                child: Text(
                  "Log in",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  fillColor: Color.fromRGBO(251, 247, 248, 1),
                  hintText: "Mobile Number",
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
            ),
            SizedBox(height: 20),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page3()),
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
                child: Text(
                  "Log In ",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 20),
            Image.asset("assets/plant1.png"),
          ],
        ),
      ),
    );
  }
}
