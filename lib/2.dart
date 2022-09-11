import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socotra/details_Screen.dart';
import 'package:get/get.dart';

class Packages extends StatefulWidget {
  const Packages({Key? key}) : super(key: key);

  @override
  State<Packages> createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(.3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                icon: const Icon(
                  CupertinoIcons.back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Packages",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                  fontSize: 30,
                ),
              ),
            ),
            Divider(
              color: Colors.black.withOpacity(.4),
              thickness: 2,
              endIndent: 220,
              indent: 40,
            ),
            const SizedBox(
              height: 35,
            ),
            Center(
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.to(const Details('images/half_1.jpg'),
                            transition: Transition.downToUp,
                            duration: const Duration(seconds: 1));
                      },
                      child: item(
                          image: 'images/half_1.jpg',
                          days: '3 days',
                          name: 'Camping',
                          cost: '\$99.9')),
                  const Divider(
                    color: CupertinoColors.separator,
                    indent: 50,
                    endIndent: 50,
                    height: 30,
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.to(
                          const Details('images/img/sand/sand5.jpg'),
                          transition: Transition.zoom,
                          duration: const Duration(seconds: 1),
                        );
                      },
                      child: item(
                          image: 'images/img/sand/sand5.jpg',
                          days: '7 days',
                          name: 'Walk on sand',
                          cost: '\$249.9')),
                  const Divider(
                    color: CupertinoColors.separator,
                    indent: 50,
                    endIndent: 50,
                    height: 30,
                  ),
                  
                          GestureDetector(
                      onTap: () {
                        Get.to(const Details('images/img/cave/cave5.jpg'),
                            transition: Transition.downToUp,
                            duration: const Duration(seconds: 1));
                      },
                      child: item(
                          image: 'images/img/cave/cave5.jpg',
                          days: '4 days',
                          name: 'Discover caves',
                          cost: '\$199.9')),


                  const Divider(
                    color: CupertinoColors.separator,
                    indent: 50,
                    endIndent: 50,
                    height: 30,
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.to(const Details('images/half_3.jpg'),
                            transition: Transition.circularReveal,
                            duration: const Duration(seconds: 1));
                      },
                      child: item(
                          image: 'images/half_3.jpg',
                          days: '6 days',
                          name: 'Dolphins',
                          cost: '\$149.9')),
                  
                          const Divider(
                    color: CupertinoColors.separator,
                    indent: 50,
                    endIndent: 50,
                    height: 30,
                  ),

                  GestureDetector(
                      onTap: () {
                        Get.to(
                          const Details('images/img/fishing/fishing8.jpg'),
                          transition: Transition.zoom,
                          duration: const Duration(seconds: 1),
                        );
                      },
                      child: item(
                          image: 'images/img/fishing/fishing8.jpg',
                          days: '7 days',
                          name: 'Fishing trip',
                          cost: '\$299.9')),
                          const Divider(
                    color: CupertinoColors.separator,
                    indent: 50,
                    endIndent: 50,
                    height: 30,
                  ),

                  GestureDetector(
                      onTap: () {
                        Get.to(const Details('images/img/fly/fly1.jpg'),
                            transition: Transition.circularReveal,
                            duration: const Duration(seconds: 1));
                      },
                      child: item(
                          image: 'images/img/fly/fly1.jpg',
                          days: '1 days',
                          name: 'Paragliding',
                          cost: '\$129.9')),
                          const Divider(
                    color: CupertinoColors.separator,
                    indent: 50,
                    endIndent: 50,
                    height: 30,
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.to(const Details('images/img/light/light4.jpg'),
                            transition: Transition.downToUp,
                            duration: const Duration(seconds: 1));
                      },
                      child: item(
                          image: 'images/img/light/light4.jpg',
                          days: '3 days',
                          name: 'Luminous algea',
                          cost: '\$49.9')),

                  const SizedBox(
                    height: 60,
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
}

// ignore: non_constant_identifier_names
Widget item({
  image,
  name,
  days,
  cost,
}) {
  return Container(
    height: 240,
    width: 390,
    //margin: EdgeInsets.only(top: 25),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
        )),
    child: Container(
      padding: const EdgeInsets.only(left: 30, bottom: 20, right: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(0),
          ])),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              name,
              style:
                  TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 35),
            ),
            const SizedBox(
              width: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  days,
                  style: TextStyle(
                      color: Colors.yellow.withOpacity(1), fontSize: 20),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        20) ,
                    color: Colors.white.withOpacity(.2),
                  ),
                  child: Text(
                    cost,
                    style: TextStyle(
                        color: Colors.white.withOpacity(1), fontSize: 20),
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
