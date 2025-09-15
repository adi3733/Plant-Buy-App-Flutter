import 'package:flutter/material.dart';
import 'package:plant_site/Screen/page3.dart';
import 'package:plant_site/Screen/page5.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 239, 242),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 22, right: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page3()),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Icon(Icons.arrow_back, size: 30),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Find Your",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "favourite Plants",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Icon(
                      Icons.shopping_bag_outlined,
                      size: 35,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 150,
                  width: 370,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(204, 231, 185, 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "30% OFF",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "02 - 23 April",
                              style: TextStyle(
                                fontSize: 22,
                                color: Color.fromARGB(255, 37, 70, 38),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 50),
                        Image.asset(
                          "assets/plant4.png",
                          fit: BoxFit.contain,
                          height: 120,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.circle, size: 17),
                  SizedBox(width: 10),
                  Icon(Icons.circle_outlined, size: 17),
                  SizedBox(width: 10),
                  Icon(Icons.circle_outlined, size: 17),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                "Indoor",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 34, 55, 35),
                ),
              ),
              const SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Page5(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3, left: 5, right: 5),
                        child: Container(
                          width: 200,
                          height: 300,
                          decoration: const BoxDecoration(color: Colors.white),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/plant3.png",
                                fit: BoxFit.contain,
                                height: 180,
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                "Snake Plants",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(255, 20, 40, 21),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.only(left: 8, right: 5),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.currency_rupee,
                                      color: Color.fromARGB(255, 36, 91, 38),
                                    ),
                                    Text(
                                      "350",
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Color.fromARGB(255, 36, 85, 37),
                                      ),
                                    ),
                                    SizedBox(width: 70),
                                    Icon(Icons.shopping_bag_outlined),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 200,
                      height: 300,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/plant3.png",
                            fit: BoxFit.contain,
                            height: 180,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Snake Plants",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 20, 40, 21),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 5),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.currency_rupee,
                                  color: Color.fromARGB(255, 36, 91, 38),
                                ),
                                Text(
                                  "350",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Color.fromARGB(255, 36, 85, 37),
                                  ),
                                ),
                                SizedBox(width: 70),
                                Icon(Icons.shopping_bag_outlined),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 200,
                      height: 300,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/plant3.png",
                            fit: BoxFit.contain,
                            height: 180,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Snake Plants",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 20, 40, 21),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 5),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.currency_rupee,
                                  color: Color.fromARGB(255, 36, 91, 38),
                                ),
                                Text(
                                  "350",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Color.fromARGB(255, 36, 85, 37),
                                  ),
                                ),
                                SizedBox(width: 70),
                                Icon(Icons.shopping_bag_outlined),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Divider(thickness: 1, color: Colors.green),
              const SizedBox(height: 5),
              const Text(
                "Outdoor",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 34, 55, 35),
                ),
              ),
              const SizedBox(height: 4),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 1, left: 5, right: 5),
                      child: Container(
                        width: 200,
                        height: 300,
                        decoration: const BoxDecoration(color: Colors.white),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/plant3.png",
                              fit: BoxFit.contain,
                              height: 180,
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              "Snake Plants",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(255, 20, 40, 21),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 5),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.currency_rupee,
                                    color: Color.fromARGB(255, 36, 91, 38),
                                  ),
                                  Text(
                                    "350",
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: Color.fromARGB(255, 36, 85, 37),
                                    ),
                                  ),
                                  SizedBox(width: 70),
                                  Icon(Icons.shopping_bag_outlined),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 200,
                      height: 300,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/plant3.png",
                            fit: BoxFit.contain,
                            height: 180,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Snake Plants",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 20, 40, 21),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 5),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.currency_rupee,
                                  color: Color.fromARGB(255, 36, 91, 38),
                                ),
                                Text(
                                  "350",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Color.fromARGB(255, 36, 85, 37),
                                  ),
                                ),
                                SizedBox(width: 70),
                                Icon(Icons.shopping_bag_outlined),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      width: 200,
                      height: 300,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/plant3.png",
                            fit: BoxFit.contain,
                            height: 180,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Snake Plants",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 20, 40, 21),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Padding(
                            padding: const EdgeInsets.only(left: 8, right: 5),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.currency_rupee,
                                  color: Color.fromARGB(255, 36, 91, 38),
                                ),
                                Text(
                                  "350",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Color.fromARGB(255, 36, 85, 37),
                                  ),
                                ),
                                SizedBox(width: 70),
                                Icon(Icons.shopping_bag_outlined),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
