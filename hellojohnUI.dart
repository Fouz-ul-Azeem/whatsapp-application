// ignore_for_file: unnecessary_string_escapes, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class mushkilat extends StatefulWidget {
  const mushkilat({super.key});

  @override
  State<mushkilat> createState() => _mushkilatState();
}

class _mushkilatState extends State<mushkilat> {
  List colorList = [
    const Color.fromARGB(255, 236, 152, 26),
    Color.fromARGB(255, 188, 221, 152),
    const Color.fromARGB(255, 115, 187, 221),
    Colors.pink,
  ];
  List textList = [
    "1 weak streak",
    "3 weak streak",
    "5 weak streak",
    "4 weak streak"
  ];
  var iconList = [
    Icons.apple,
    Icons.ac_unit,
    Icons.arrow_circle_right_sharp,
    Icons.vaccines,
  ];

  // ignore: non_constant_identifier_names
  List Gridlist = ["Apple", "Activision billazard", "AMD", "Valve"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            backgroundColor: Colors.black,
            leading: Icon(
              Icons.menu,
              color: Colors.white,
              size: 40,
            ),
          )),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.only(top: 60, left: 20)),
                Text(
                  "Hello, John",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              height: 100,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(221, 13, 20, 44),
              ),
              child: ListTile(
                title: Text(
                  "YOUR BALANCE",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.deepOrangeAccent),
                ),
                subtitle: Text(
                  "\$23,052.84",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("Assets/image2.jpg"),
                  radius: 30,
                ),
                trailing: Icon(Icons.chevron_right),
                iconColor: Colors.white,
              ),
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(top: 100, left: 20)),
                Text(
                  "Achivements",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Spacer(
                  flex: 2,
                ),
                Text(
                  "See all",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.deepOrangeAccent),
                )
              ],
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                        width: 120,
                        height: 120,
                        margin: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: colorList[index]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.apple),
                            Text(
                              textList[index],
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ));
                  }),
            ),
            Padding(
                padding: EdgeInsets.only(
              top: 10,
            )),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 15)),
                Text(
                  "investment portfolio",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Spacer(
                  flex: 2,
                ),
                Text(
                  "see all",
                  style: TextStyle(fontSize: 15, color: Colors.orange),
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  // height: 300,
                  child: GridView.builder(
                      padding: EdgeInsets.only(top: 10),
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1, // 2 / 2,
                          mainAxisSpacing: 13,
                          crossAxisSpacing: 13,
                          crossAxisCount: 2),
                      itemCount: 4,
                      itemBuilder: (_, index) {
                        return Container(
                            padding: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 43, 42, 42),
                                borderRadius: BorderRadius.circular(15)),
                            child: Container(
                              child: Column(children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 3, left: 120),
                                      child: Icon(
                                        Icons.more_vert_sharp,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                      top: 100,
                                    )),
                                    Icon(
                                      iconList[index],
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                Row(children: [
                                  Text(
                                    Gridlist[index],
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ]),
                                Row(
                                  children: [
                                    Text(
                                      "\$29.035(45.03)",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    ),
                                  ],
                                )
                              ]),
                            ));
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
