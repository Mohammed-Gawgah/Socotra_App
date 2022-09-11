import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import '1.dart';

void main() {
  runApp(const MyApp());

  //SystemChrome.setEnabledSystemUIOverlays([]);
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.immersiveSticky,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: splachscreen(),
    );
  }
}


class splachscreen extends StatefulWidget {
  const splachscreen({Key? key}) : super(key: key);

  @override
  State<splachscreen> createState() => _splachscreenState();
}

class _splachscreenState extends State<splachscreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('images/logo.jpg'),
      nextScreen: const HomePage(),
      splashTransition: SplashTransition.scaleTransition,
      animationDuration: const Duration(seconds: 2),
      splashIconSize: 150,
      backgroundColor: const Color(0xFFfafafa),
    );
  }
}