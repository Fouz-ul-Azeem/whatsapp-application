// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyClass extends StatefulWidget {
  const MyClass({super.key});

  @override
  State<MyClass> createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 16, 182, 22),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: AppBar(
            backgroundColor: Color.fromARGB(255, 28, 173, 33),
            centerTitle: true,
            leading: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
              size: 24.0,
            ),
            title: const Text(
              "Google.inc",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            actions: [
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: const Icon(
                    Icons.more_vert_sharp,
                    color: Colors.white,
                    size: 24.0,
                  ),
                  onPressed: () {
                    print('Settings icon pressed!');
                  },
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
            ),
            //pury container ko move karany ke liye

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Agency Buisness Lead",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 15, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.apartment),
                      SizedBox(
                        width: 90,
                        //sized box help us to keep distance
                        child: Text(
                          "google.inc",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                      ),
                      Icon(Icons.pin_drop_outlined),
                      Text(
                        "jakarta.indonesia",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
                Container(
                  // padding: EdgeInsets.only(left: 10, right: 10, top: 20),

                  margin: const EdgeInsets.only(top: 30),
                  height: 110,
                  width: 700,
                  //container ki margin ke liye
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border:  Border.fromBorderSide(
                        BorderSide(
                          color: Color.fromARGB(255, 194, 192, 192),
                          width: 1))),

                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 130,
                          child: SizedBox(
                            width: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.book_online_rounded),
                                Text(
                                  'jobtype',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87),
                                ),
                                Text(
                                  'parmenent work',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //two diffrent containers are used to make contanir in equal line
                        Container(
                          color: const Color.fromARGB(255, 223, 221, 221),
                          width: 3,
                          height: 200,
                        ),
                        //line used to sepperate the container
                        SizedBox(
                          width: 130,
                          //width of the second container
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.download_done),
                              Text(
                                'salary',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87),
                              ),
                              Text(
                                '130k/yr',
                                style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
                Padding(padding: EdgeInsets.only(left: 5, right: 55, top: 15)),
                Text("Preffered qualifications",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
                Padding(padding: EdgeInsets.only(top: 5)),
                Text(
                    "• Agency experience with knowlege of how and where decisions are made."),
                Text("• Knowlege of buisness performance."),
                Text("• Ability to take initiative and deliver value."),
                Text(
                    "• Excellent project management an orginizational skills."),
                Padding(padding: EdgeInsets.only(top: 3)),
                Text(
                  "About the job",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                Text(
                    "Buisness that partner with google comein all shapes,sizes and market caps,and no one google advertising solution works for all your knowlege of online media."),
                Container(
                  margin: EdgeInsets.only(bottom: 100),
                  width: 600,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(236, 31, 197, 39),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Apply for this job",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
