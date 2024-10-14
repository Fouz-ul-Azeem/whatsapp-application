// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:day_one/call_info.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

List TextList = [
  "Mamma",
  "Junaid Bhai",
  "Abbu",
  "Shahood Bhai",
  "Mohib Bhai",
  "Khala",
  "Minhaj Bhai",
  "Learn Flutter",
  "Fouz",
  "Phuppo"
];
var ImageList = [
  "Assets/png1.jpg",
  "Assets/png2.jpg",
  "Assets/png3.jpg",
  "Assets/png4.jpg",
  "Assets/png5.jpg",
  "Assets/png6.jpg",
  "Assets/png7.jpg",
  "Assets/png8.jpg",
  "Assets/png9.jpg",
  "Assets/png10.png"
];
List SubTitlelist = [
  "September 18,3:37 PM",
  "September 11,4:27 PM",
  "September 5,1:46 PM",
  "September 3,9:37 PM",
  "August 29,8:40 AM",
  "August 25,1:41 AM",
  "August 16,2:24 PM",
  "April 14,3:44 PM",
  "April 8,5:05 AM",
  "April 3,9:10 PM",
  "April 2,3:15 PM",
  "April 1,7:00 PM",
  "April 1,1:30 PM",
];
List IconList = [
  Icons.arrow_outward_sharp,
  Icons.arrow_outward_sharp,
  Icons.arrow_outward_sharp,
  Icons.arrow_outward_sharp,
  Icons.arrow_outward_sharp,
  Icons.arrow_outward_sharp,
  Icons.arrow_outward_sharp,
  Icons.arrow_outward_sharp,
  Icons.arrow_outward_sharp,
  Icons.arrow_outward_sharp,
  Icons.arrow_outward_sharp,
  Icons.arrow_outward_sharp,
];
List iconlist = [
  Icons.phone,
  Icons.phone,
  Icons.phone,
  Icons.phone,
  Icons.phone,
  Icons.phone,
  Icons.phone,
  Icons.phone,
  Icons.phone,
  Icons.phone,
  Icons.phone
];

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return

        //Scaffold(
        // backgroundColor: Color.fromARGB(255, 23, 25, 32),
        // appBar: PreferredSize(
        //     preferredSize: Size.fromHeight(150),
        //     child: AppBar(
        //       backgroundColor: Color.fromARGB(221, 13, 24, 24),
        //       title: Row(
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         children: [
        //           Text(
        //             "WhatsApp",
        //             style: TextStyle(
        //                 fontSize: 25,
        //                 fontWeight: FontWeight.bold,
        //                 color: Colors.white70),
        //           ),
        //           Spacer(),
        //           Padding(
        //             padding: EdgeInsets.all(10),
        //             child: Icon(
        //               Icons.camera_alt,
        //               color: Colors.white70,
        //               size: 30,
        //             ),
        //           ),
        //           Padding(
        //               padding: EdgeInsets.all(10),
        //               child: Icon(Icons.search, size: 30, color: Colors.white70)),
        //           Padding(
        //             padding: EdgeInsets.all(10),
        //             child: Icon(
        //               Icons.more_vert_sharp,
        //               color: Colors.white70,
        //               size: 30,
        //             ),
        //           )
        //         ],
        //       ),
        //     )),
        // body:
        Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 10)),
        ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("Assets/png10.png"),
              radius: 35,
            ),
            title: Text(
              "Create call link",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            subtitle: Text(
              "Share a link for your WhatsApp call",
              style: TextStyle(color: Colors.grey),
            )),
        Row(
          children: [
            Padding(
                padding: EdgeInsets.only(
              left: 20,
            )),
            Text(
              "Recent",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: TextList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CallLog(
                                name: TextList[index],
                                userImage: ImageList[index],
                                subtitle: SubTitlelist[index],
                              )));
                },
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(ImageList[index]),
                      radius: 30,
                    ),
                    title: Text(
                      TextList[index],
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    subtitle: Column(children: [
                      Row(children: [
                        Icon(
                          IconList[index],
                          size: 20,
                          color: Colors.green,
                        ),
                        Text(
                          SubTitlelist[index],
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey),
                        )
                      ])
                    ]),
                    trailing: Icon(
                      iconlist[index],
                      size: 30,
                      color: Colors.green,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
