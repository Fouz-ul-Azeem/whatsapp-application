// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:blurrycontainer/blurrycontainer.dart';

class CallLog extends StatefulWidget {
  final String name;
  final String userImage;
  final String subtitle;
  const CallLog(
      {super.key,
      required this.name,
      required this.userImage,
      required this.subtitle});

  @override
  State<CallLog> createState() => _CallLogState();
}

class _CallLogState extends State<CallLog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 12, 22, 32),
      appBar: AppBar(
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
            color: Colors.white38,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Call info",
          style: TextStyle(color: Colors.white70, fontSize: 25),
        ),
        actions: [
          InkWell(
            child: Icon(
              Icons.chat,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Padding(padding: EdgeInsets.all(10)),
          Icon(
            Icons.more_vert_sharp,
            color: Colors.white,
          )
        ],
        backgroundColor: Color.fromARGB(255, 34, 44, 51),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(widget.userImage),
              ),
              title: Text(
                widget.name,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              subtitle: Text(
                "Hey there i am using...",
                style: TextStyle(
                  color: Colors.white54,
                ),
              ),
              trailing: Wrap(
                spacing: 10,
                children: <Widget>[
                  Icon(
                    Icons.call,
                    color: Color.fromRGBO(86, 190, 126, 1),
                    size: 25,
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  Icon(
                    Icons.missed_video_call_sharp,
                    color: Color.fromRGBO(86, 190, 126, 1),
                    size: 30,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 80),
              width: 300,
              height: 1,
              decoration: BoxDecoration(color: Colors.white10),
            ),
            Padding(
              padding: EdgeInsets.only(left: 86, top: 10),
              child: Row(
                children: [
                  Text(
                    "October 19",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.white30),
                  )
                ],
              ),
            ),
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.red,
                  size: 30,
                ),
              ),
              title: Text(
                "Missed",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.white54,
                    size: 18,
                  ),
                  Text(
                    "  ${widget.subtitle}",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
            // SizedBox(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       BlurryContainer(
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.end,
            //         ),
            //         blur: 5,
            //         width: 200,
            //         height: 200,
            //         elevation: 0,
            //         color: Colors.transparent,
            //         padding: const EdgeInsets.all(8),
            //         borderRadius: const BorderRadius.all(Radius.circular(20)),
            //       ),
            //       BlurryContainer.square(
            //         child: SizedBox(),
            //         dimension: 200,
            //       ),
            //       BlurryContainer.expand(
            //         child: SizedBox(),
            //       ),
            //     ],
            // ),
            // )
          ],
        ),
      ),
    );
  }
}
