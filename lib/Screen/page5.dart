import 'package:flutter/material.dart';
import 'package:plant_site/Screen/page4.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<StatefulWidget> createState() => _page5State();
}

class _page5State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:const Color.fromARGB(255, 251, 239, 242),
      body: Padding(
        padding: EdgeInsets.only(top: 70, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => Page4()),
                );
              },

              child: Icon(
                Icons.arrow_back,
                size: 30,
                color: const Color.fromARGB(255, 20, 48, 21),
              ),
            ),
            //SizedBox(height:10,),
            Image.asset("assets/plant3.png"),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.circle, size: 17),
                SizedBox(width: 10),
                Icon(Icons.circle_outlined, size: 17),
                SizedBox(width: 10),
                Icon(Icons.circle_outlined, size: 17),
              ],
            ),
            SizedBox(height: 25),
            Text(
              "Snake Plants",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                "Plants make your life with minimal and happy love the plants more and enjoy life.",
                style: TextStyle(fontSize: 17),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: const Color.fromRGBO(118, 152, 75, 1),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 45,
                            width: 75,
                            child: Icon(Icons.height, color: Colors.white),
                          ),
                          SizedBox(height: 1),
                          Text(
                            "Height",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "30cm-40cm",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white70,
                            ),
                          ),

                          SizedBox(height: 20),
                          Text(
                            "Total Price",
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white70,
                            ),
                          ),
                          SizedBox(height: 3),
                          Row(
                            children: [
                              Icon(Icons.currency_rupee, color: Colors.white),
                              SizedBox(width: 2),
                              Text(
                                "350",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 30),

                      Column(
                        children: [
                          Icon(Icons.portrait, color: Colors.white),
                          //),
                          SizedBox(height: 1),
                          Text(
                            "Pot",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Ceramic Pot",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        children: [
                          Container(
                            // height:45,
                            width: 75,
                            child: Icon(Icons.thermostat, color: Colors.white),
                          ),
                          SizedBox(height: 1),
                          Text(
                            "Temperature",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "20'C-25'C",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
