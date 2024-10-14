import 'package:day_one/text_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

TextEditingController tFController = TextEditingController();

List Textlist = [
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
List Subtitlelist = [
  "A raha hon",
  "Yaar ye samjh nahi a raha ",
  "Ok",
  "Nahi hoa ",
  "Allah hafiz",
  "A jaye gy kisi din",
  "Jaab ap kahin",
  "Aj class hy",
  "INSHAALLAH",
  " Asslam o alikum",
];
List imageList = [
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

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.sizeOf(context).width;
    return SingleChildScrollView(
      child: Column(
        children: [
          isSearching
              ? TextField(
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                  controller: tFController)
              : const SizedBox(),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: Textlist.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.all(5),
                  child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TextScreen(
                                    name: Textlist[index],
                                    userImage: imageList[index],
                                  )),
                        );
                      },
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(imageList[index]),
                        radius: screenWidth / 10,
                      ),
                      title: Text(
                        Textlist[index],
                        style: TextStyle(
                            fontSize: screenWidth / 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      subtitle: Text(
                        Subtitlelist[index],
                        style: TextStyle(
                            fontSize: screenWidth / 30,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey),
                      )));
            },
          ),
        ],
      ),
    );
  }
}

bool isSearching = false;
