import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socotra/PaymentPage.dart';
import 'package:get/get.dart';

import 'functions.dart';

class Details extends StatefulWidget {
  final image;

  const Details(this.image, {Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)),
                      image: DecorationImage(
                        image: AssetImage(widget.image),
                        fit: BoxFit.fill,
                      ),
                      
                      

                      
                    ),
                    child: Container(
                      
                      decoration: BoxDecoration(
                        


                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50)),
                          gradient: LinearGradient(
                              begin: Alignment.bottomRight,
                              colors: [
                                Colors.black.withOpacity(.5),
                                Colors.black.withOpacity(0),
                              ])),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 25),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                name(widget.image),
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.9),
                                    fontSize: 35),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    days(widget.image),
                                    style: TextStyle(
                                        color: Colors.yellow.withOpacity(1),
                                        fontSize: 20),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white.withOpacity(.2),
                                    ),
                                    child: Text(
                                      cost(widget.image),
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(1),
                                          fontSize: 20),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(.2),
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
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),


                      boxShadow:[
                            BoxShadow(
                              color: Color(0xFFe8e8e8),
                              blurRadius: 5.0,
                              offset: Offset(0, 5),
                            ),
                            BoxShadow(
                              color: Color(0xFFe8e8e8),
                              blurRadius: 5.0,
                              offset: Offset(-5, 0),
                            ),
                            BoxShadow(
                              color: Color(0xFFe8e8e8),
                              blurRadius: 5.0,
                              offset: Offset(5, 0),
                            ),
                          ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                          color: Colors.white,
                          
                        ),
                          child: Text(
                            "Description",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[800],
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                            child: Text(
                          description(image: widget.image),
                          textAlign: TextAlign.center,
                        ),
                        
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 15, bottom: 15),
                        child: Text(
                          "Gallery",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            item(image: pic1(widget.image)),
                            item(image: pic2(widget.image)),
                            item(image: pic3(widget.image)),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 89,
                        alignment: Alignment.bottomCenter,
                        child: TextButton(
                          onPressed: () {

                            Get.to(const PaymentPage(),transition: Transition.cupertino,duration: const Duration(seconds: 1), );
                          },
                          child: Container(
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue.withOpacity(.8),
                              ),
                              margin: const EdgeInsets.symmetric(horizontal: 10),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              child: const Text(
                                "Book Now !!",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget item({
  image,
}) {
  return Container(
    height: 130,
    width: 130,
    margin: const EdgeInsets.only(right: 10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
        )),
    child: Container(
      padding: const EdgeInsets.only(left: 30, bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),



          

          ),
    ),
  );
}
