// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '2.dart';
import '3.dart';
import 'full_details.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            Container(
              width: double.infinity,
              height: 300,
              margin: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                  image: DecorationImage(
                    image: AssetImage('images/1.jpg'),
                    fit: BoxFit.cover,
                  )),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                      Colors.black.withOpacity(.7),
                      Colors.black.withOpacity(.3),
                    ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        PopupMenuButton(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          elevation: 1,
                          icon: const Icon(
                            CupertinoIcons.bars,
                            color: Colors.white70,
                            size: 40,
                          ),
                          onSelected: (item) => onSelected(context, item),
                          itemBuilder: (context) => [
                            PopupMenuItem<int>(
                              value: 0,
                              child: Row(
                                children: const [
                                  Icon(CupertinoIcons.archivebox),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Packages",
                                  ),
                                ],
                              ),
                            ),
                            PopupMenuItem<int>(
                              value: 1,
                              child: Row(
                                children: const [
                                  Icon(CupertinoIcons.bubble_left),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("About"),
                                ],
                              ),
                            ),
                            PopupMenuItem<int>(
                              value: 2,
                              child: Row(
                                children: const [
                                  Icon(CupertinoIcons.square_arrow_right),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("Exit"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    const Text(
                      "Socotra",
                      style: TextStyle(
                          fontFamily: "Times New Roman",
                          fontSize: 52,
                          color: Colors.white,
                          letterSpacing: 0),
                    ),
                    Text(
                      "natural island in the arabian sea",
                      style: TextStyle(
                          fontFamily: "Times New Roman",
                          fontSize: 15,
                          color: Colors.white.withOpacity(0.9),
                          letterSpacing: 2),
                    ),
                    Divider(
                      color: Colors.white.withOpacity(.5),
                      thickness: 1,
                      endIndent: 50,
                      indent: 50,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(),
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "Best Destination",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                        fontSize: 25,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 380,
                    child: ListView(
                      padding: const EdgeInsets.only(left: 20, right: 5),
                      scrollDirection: Axis.horizontal,
                      children: [
                        item(
                            image: 'images/img/tmp1.jpg',
                            title: 'socotra island',
                            child: Icon(
                              Icons.location_on_outlined,
                              color: Colors.grey[300],
                              size: 35,
                            ),
                            width: 380.0),

                        item(
                            image: 'images/img/tmp6.jpg',
                            title: 'socotra island',
                            child: Icon(
                              Icons.location_on_outlined,
                              color: Colors.grey[300],
                              size: 35,
                            ),
                            width: 380.0),
                        item(
                            image: 'images/test.jpg',
                            title: 'socotra island',
                            child: Icon(
                              Icons.location_on_outlined,
                              color: Colors.grey[300],
                              size: 35,
                            ),
                            width: 380.0),
                        item(
                            image: 'images/img/tmp10.jpg',
                            title: 'socotra island',
                            child: Icon(
                              Icons.location_on_outlined,
                              color: Colors.grey[300],
                              size: 35,
                            ),
                            width: 380.0),
                        item(
                            image: 'images/3.jpg',
                            title: 'title',
                            child: Icon(
                              Icons.location_on_outlined,
                              color: Colors.grey[300],
                              size: 35,
                            ),
                            width: 380.0),
                        item(
                            image: 'images/4.jpg',
                            title: 'title',
                            child: Icon(
                              Icons.location_on_outlined,
                              color: Colors.grey[300],
                              size: 35,
                            ),
                            width: 380.0),


                        item(
                            image: 'images/half_4.jpg',
                            title: 'socotra island',
                            child: Icon(
                              Icons.location_on_outlined,
                              color: Colors.grey[300],
                              size: 35,
                            ),
                            width: 380.0),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "Nature Elements",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                        fontSize: 25,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 280,
                    child: ListView(
                      padding: const EdgeInsets.only(left: 20, right: 5),
                      scrollDirection: Axis.horizontal,
                      children: [
                        item(
                            image: 'images/img/tmp8.jpg',
                            title: 'title',
                            width: 170.0),
                        item(
                            image: 'images/img/tmp9.jpg',
                            title: 'title',
                            width: 170.0),
                        item(
                            image: 'images/full_1.jpg',
                            title: 'title',
                            width: 170.0),
                        item(
                            image: 'images/5.jpg',
                            title: 'title',
                            width: 170.0),

                        item(
                            image: 'images/6.jpg',
                            title: 'title',
                            width: 170.0),
                        item(
                            image: 'images/full_2.jpg',
                            title: 'title',
                            width: 170.0),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Divider(
                    color: CupertinoColors.placeholderText,
                    thickness: 0.5,
                    endIndent: 50,
                    indent: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '© 2022 - By Mohammed Gawgah',
                        style:
                            TextStyle(color: CupertinoColors.placeholderText),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget item({image, title, width, child}) {
    return GestureDetector(
      onTap: () {


        Get.to(FullDetails(image),transition: Transition.cupertinoDialog,duration: const Duration(seconds: 1), );
      },
      child: Container(
        width: width,
        margin: const EdgeInsets.only(
          right: 15,
          top: 10,
        ),
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.white,
                offset: Offset(4, 4),
                blurRadius: 5,
                spreadRadius: 1,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-1, -1),
                blurRadius: 10,
                spreadRadius: 1,
              )
            ],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill,
            )),
        child: Container(
          padding: const EdgeInsets.only(left: 30, bottom: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.3),
                Colors.black.withOpacity(.0),
              ])),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  child: child,
                ),
                Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 25),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void onSelected(BuildContext context, item) {
  switch (item) {
    case 0:

      Get.to(const Packages(),transition: Transition.cupertino,duration: const Duration(seconds: 2), );
      break;
    case 1:

      Get.to(const About(),transition: Transition.cupertino,duration: const Duration(seconds: 2), );
      break;
    case 2:
      showCupertinoDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              insetPadding: const EdgeInsets.only(top: 670,),
                title: const Text(
                  "Exit",

                ),
                content: Container(width: MediaQuery.of(context).size.width - 70,
                  child: const Text("Are you sure you want to exit ?",style: TextStyle(fontSize: 20),)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                actions: [
                  FlatButton(
                    child: const Text("Cancel",style: TextStyle(color: CupertinoColors.activeBlue,fontSize: 18)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  FlatButton(
                    child: const Text("Exit",style: TextStyle(color: CupertinoColors.destructiveRed,fontSize: 18)),
                    onPressed: () {},
                  ),
                ]);
          });
      break;
    default:
  }
}
