// ignore_for_file: prefer_final_fields, non_constant_identifier_names

import 'package:awesome_card/awesome_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socotra/TicketPage.dart';
import 'package:get/get.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  TextEditingController _CardNumberController = TextEditingController();
  TextEditingController _ExpiredDateController = TextEditingController();
  TextEditingController _CVVController = TextEditingController();
  TextEditingController _CardHolderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.indigoAccent,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [

                    Color(0xFF00d2ff),
                    Color(0xFF3a7bd5),


                  ])
          ),
          child: Column(
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
                    "Payment Page",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                height: 270,
                width: 420,
                child: CreditCard(
                    cardNumber: _CardNumberController.text,
                    cardExpiry: _ExpiredDateController.text,
                    cardHolderName: _CardHolderController.text,
                    cvv: _CVVController.text,
                    bankName: "Axis Bank",
                    cardType: CardType.masterCard,
                    showBackSide: false,
                    frontBackground: CardBackgrounds.black,
                    backBackground: CardBackgrounds.white,
                    showShadow: false,
                    textExpDate: 'Exp. Date',
                    textName: 'Name',
                    textExpiry: 'MM/YY'),
              ),
              Container(
                //color: Colors.red,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    TextField(
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      controller: _CardNumberController,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              const BorderSide(color: Colors.yellow, width: 2),
                        ),
                        labelText: 'Card Number',
                        labelStyle:
                            const TextStyle(fontSize: 20, color: Colors.white),
                        hintText: 'Enter Your Card Number',
                        hintStyle:
                            const TextStyle(fontSize: 15, color: Colors.white),
                        prefixIcon: const Icon(
                          CupertinoIcons.creditcard_fill,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextField(
                      controller: _ExpiredDateController,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              const BorderSide(color: Colors.yellow, width: 2),
                        ),
                        labelText: 'Expired Date',
                        labelStyle:
                            const TextStyle(fontSize: 20, color: Colors.white),
                        hintText: 'Enter Your Expired Date',
                        hintStyle:
                            const TextStyle(fontSize: 15, color: Colors.white),
                        prefixIcon: const Icon(
                          CupertinoIcons.calendar,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextField(
                      controller: _CVVController,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              const BorderSide(color: Colors.yellow, width: 2),
                        ),
                        labelText: 'CVV',
                        labelStyle:
                            const TextStyle(fontSize: 20, color: Colors.white),
                        hintText: 'Enter Your CVV',
                        hintStyle:
                            const TextStyle(fontSize: 15, color: Colors.white),
                        prefixIcon: const Icon(
                          CupertinoIcons.lock_open_fill,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextField(
                      controller: _CardHolderController,
                      style: const TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              const BorderSide(color: Colors.yellow, width: 2),
                        ),
                        labelText: 'Card Holder',
                        labelStyle:
                            const TextStyle(fontSize: 20, color: Colors.white),
                        hintText: 'Enter The Card Holder Name',
                        hintStyle:
                            const TextStyle(fontSize: 15, color: Colors.white),
                        prefixIcon: const Icon(
                          CupertinoIcons.person_solid,
                          color: Colors.white,
                        ),
                      ),
                    ),


                  ],
                ),
              ),
              FloatingActionButton(
                child: const Icon(
                  CupertinoIcons.checkmark_alt,
                  size: 35,
                ),
                onPressed: () {

                  Get.to(const TicketPage(),transition: Transition.zoom,duration: const Duration(seconds: 1));
                  ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(
                      content: Container(
                        padding: const EdgeInsets.all(16),
                        height: 90,
                        decoration: const BoxDecoration(
                          color: Color(0xFF00e676),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 48,),

                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  const [
                                  Text(
                                    'Done',
                                  style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold ),
                                  ),
                                  Text(
                                    'your booking is complated successfully',
                                  style: TextStyle(fontSize: 15,color: Colors.white, fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      elevation: 0,
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.transparent,

                    ),
                  );
                },
              ),

              const SizedBox(height: 200,)
            ],
          ),
        ),
      ),
    );
  }
}
