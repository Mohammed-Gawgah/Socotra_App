import 'dart:typed_data';

import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'package:screenshot/screenshot.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({Key? key}) : super(key: key);

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  var _imageFile;
  ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFF2bc0e4),
                  Color(0xFFeaecc6),
                ])
        ),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
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
                const Text(
                  "Ticket Page",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Center(
              child: Screenshot(
                controller: screenshotController,
                child: TicketWidget(
                  isCornerRounded: true,
                  height: 500,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 120,
                            height: 25,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(width: 1, color: Colors.green),
                            ),
                            child: const Text("Socotra Tours"),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            "Ticket",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Column(
                            children: [
                              TicketInfo(
                                  'Package Name',
                                  'Welcome To Socotra',
                                  'Date',
                                  '${DateTime.now().year} - ${DateTime.now().month} - ${DateTime.now().day}'),
                              Padding(
                                padding: const EdgeInsets.only(top: 12, right: 45),
                                child: TicketInfo(
                                    'Name', 'Mohammed Awad', 'Days', '10'),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 90, left: 30, right: 30),
                          child: Container(
                            width: 150,
                            height: 150,
                            child: BarcodeWidget(
                              barcode: Barcode.qrCode(),
                              data: '123456789012',
                              errorBuilder: (context, error) =>
                                  const FlutterLogo(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(bottom: 70),
                width: double.infinity,
                height: 89,
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  onPressed: () {
                    screenshotController.capture().then((image) async {
                      ShowCapturedWidget(context, image!);

                    });
                  },
                  child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                        //color: Colors.blue.withOpacity(.8),

                            gradient: const LinearGradient(
                                colors: [
                                  Color(0xFF2bc0e4),
                                  Color(0xFFeaecc6),
                                ])

                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: const Text(
                        "Press to take ScreenShot",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
            ),

            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.only(top: 100),
                child: const Text('have a nice experiences in our island',style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ) ,),
                ),
            )
          ],
        ),
      ),
    );
  }
}

Widget TicketInfo(String title1, String info1, String title2, String info2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title1,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                info1,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title2,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                info2,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      )
    ],
  );
}

Future<dynamic> ShowCapturedWidget(
    BuildContext context, Uint8List capturedImage) {
  return showDialog(
    
    context: context,
    builder: (context) => Center(
        child: Container(
          //color: Colors.red,
      height: 600,
      width: 400,
      child: Image.memory(capturedImage),
    )),
  );
}

