// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Kaam extends StatefulWidget {
  const Kaam({super.key});

  @override
  State<Kaam> createState() => _KaamState();
}

class _KaamState extends State<Kaam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: AppBar(
          backgroundColor: Colors.grey,
          centerTitle: true,
          leading: const Icon(
            Icons.circle_notifications,
            size: 50,
          ),
          title: const Text("Applied",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          actions: const [
            Icon(
              Icons.more_vert_sharp,
              size: 40,
              color: Colors.black,
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: 350,
                height: 65,
                margin: EdgeInsets.all(27.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.fromBorderSide(
                    BorderSide(color: Color.fromARGB(255, 121, 121, 121)),
                  ),
                ),
                child: Row(children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text(
                    "serach for job ",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                  Container(
                      width: 80,
                      height: 75,
                      margin: EdgeInsets.only(left: 94.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                        color: Colors.green,
                      ),
                      child: Icon(
                        Icons.search_rounded,
                        size: 37,
                        color: Colors.white,
                      ))
                ]),
              ),
              Column(
                children: [
                  Container(
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.fromBorderSide(BorderSide(
                            color: const Color.fromARGB(255, 170, 170, 170)))),
                    padding: EdgeInsets.only(left: 45, right: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 50,
                              ),
                              child: Text(
                                "UX/UI Designer",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 57,
                              height: 55,
                              child: Icon(
                                Icons.arrow_forward_ios,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 34, top: 5)),
                            SizedBox(
                              width: 60,
                              child: Icon(
                                Icons.apartment,
                                size: 30,
                              ),
                            ),
                            SizedBox(
                                width: 110,
                                child: Text(
                                  "Google inc",
                                  style: TextStyle(fontSize: 20),
                                ))
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(left: 2, right: 59)),
                        Row(
                          children: [
                            SizedBox(
                              width: 65,
                              height: 30,
                            ),
                            Icon(Icons.watch_rounded),
                            SizedBox(
                              width: 120,
                              height: 40,
                              child: Text(
                                "4 day ago",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              // margin: EdgeInsets.only(right: 30),
                              width: 70,
                              height: 30,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 166, 201, 167),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.fromBorderSide(
                                    BorderSide(
                                        color: Color.fromARGB(255, 50, 110, 0)),
                                  )),
                              child: Padding(
                                padding: EdgeInsets.only(left: 17, top: 6),
                                child: Text(
                                  'SEND',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 5, 133, 10)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.fromBorderSide(BorderSide(
                            color: const Color.fromARGB(255, 170, 170, 170)))),
                    padding: EdgeInsets.only(
                      left: 45,
                      right: 20,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 50,
                              ),
                              child: Text(
                                "Buisness Lead",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 57,
                              height: 55,
                              child: Icon(
                                Icons.arrow_forward_ios,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 34, top: 5)),
                            SizedBox(
                              width: 60,
                              child: Icon(
                                Icons.apartment,
                                size: 30,
                              ),
                            ),
                            SizedBox(
                                width: 110,
                                child: Text(
                                  "Figma",
                                  style: TextStyle(fontSize: 20),
                                ))
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(left: 2, right: 59)),
                        Row(
                          children: [
                            SizedBox(
                              width: 65,
                              height: 30,
                            ),
                            Icon(Icons.access_time_rounded),
                            SizedBox(
                              width: 120,
                              height: 40,
                              child: Text(
                                "24 day ago",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              // margin: EdgeInsets.only(right: 30),
                              width: 70,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.fromBorderSide(
                                    BorderSide(
                                        color: const Color.fromARGB(
                                            255, 119, 67, 0)),
                                  )),
                              child: Padding(
                                padding: EdgeInsets.only(left: 10, top: 6),
                                child: Text(
                                  'PENDING',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 12,
                                      color: Colors.deepOrange),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    height: 150,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.fromBorderSide(BorderSide(
                            color: const Color.fromARGB(255, 170, 170, 170)))),
                    padding: EdgeInsets.only(
                      left: 45,
                      right: 20,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 30,
                              ),
                              child: Text(
                                "GRAPHIC DESIGNER",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              width: 57,
                              height: 55,
                              child: Icon(
                                Icons.arrow_forward_ios,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 34, top: 5)),
                            SizedBox(
                              width: 60,
                              child: Icon(
                                Icons.apartment,
                                size: 30,
                              ),
                            ),
                            SizedBox(
                                width: 110,
                                child: Text(
                                  "Pinterst",
                                  style: TextStyle(fontSize: 20),
                                ))
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(left: 2, right: 59)),
                        Row(
                          children: [
                            SizedBox(
                              width: 65,
                              height: 30,
                            ),
                            Icon(Icons.access_time_rounded),
                            SizedBox(
                              width: 120,
                              height: 40,
                              child: Text(
                                "72 day ago",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            Container(
                              // margin: EdgeInsets.only(right: 30),
                              width: 70,
                              height: 30,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 247, 176, 176),
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.fromBorderSide(
                                    BorderSide(
                                        color: const Color.fromARGB(
                                            255, 116, 0, 0)),
                                  )),
                              child: Padding(
                                padding: EdgeInsets.only(left: 10, top: 6),
                                child: Text(
                                  'REJECTED',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w900,
                                      color: const Color.fromARGB(
                                          255, 216, 38, 25)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
