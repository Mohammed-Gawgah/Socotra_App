import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey2,
      body: SingleChildScrollView(
        child: Container(
          //height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
              Color(0xFF0f3443),
              Color(0xFF34e89e),
            ])
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(15),

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
                  const Text(
                    "About Page",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 120,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: ClipOval(
                        child: Image.asset("images/logo.jpg", fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "SOCOTRA",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Times New Roman",
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  const Text(
                    "testing version (beta)",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Times New Roman",
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Divider(
                    color: CupertinoColors.placeholderText,
                    thickness: 0.5,
                    endIndent: 20,
                    indent: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              "About Us",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 50,
                        ),

                        //row 1
                        Row(
                          children: const [
                            Text(
                              "Developer Name",
                              style: TextStyle(
                                //fontFamily: "Times New Roman",
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              "Mohammed Gawgah",
                              style: TextStyle(
                                fontFamily: "Times New Roman",
                                color: Colors.white,
                                fontSize: 15,
                                //letterSpacing: 2,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        //row 2
                        Row(
                          children: const [
                            Text(
                              "University",
                              style: TextStyle(
                                //fontFamily: "Times New Roman",
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 85,
                            ),
                            Text(
                              "Al-Rayan University",
                              style: TextStyle(
                                fontFamily: "Times New Roman",
                                color: Colors.white,
                                fontSize: 15,
                                //letterSpacing: 2,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 10,
                        ),

                        //row 3
                        Row(
                          children: const [
                            Text(
                              "Faculty",
                              style: TextStyle(
                                //fontFamily: "Times New Roman",
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 103,
                            ),
                            Text(
                              "Engineering & IT",
                              style: TextStyle(
                                fontFamily: "Times New Roman",
                                color: Colors.white,
                                fontSize: 15,
                                //letterSpacing: 2,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Divider(
                    color: CupertinoColors.placeholderText,
                    thickness: 0.5,
                    endIndent: 20,
                    indent: 20,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
              const Text(
                "Follow Me On Instagram",
                style: TextStyle(
                    color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "@moe.a.g_official",
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 15,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                ),
              ),

              const SizedBox(
                        height: 80,
                      ),
                      const Divider(
                        color: Colors.white,
                        thickness: 0.5,
                        endIndent: 50,
                        indent: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Copy Right © 2022',
                            style:
                                TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
            ],
          ),
        ),
      ),
    );

  }
}
