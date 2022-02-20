import 'package:flutter/material.dart';
import 'package:matchbudyyanimation/homepage.dart';
import 'page2.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
          duration: 1000,

          splash: Image.network("https://tse2.mm.bing.net/th?id=OIP.GFibTtIhz9iLf-JVAb381QHaHN&pid=Api&P=0&w=171&h=167"),
          nextScreen: MyHomePage(),
          splashTransition: SplashTransition.rotationTransition,
          pageTransitionType: PageTransitionType.leftToRight,

          backgroundColor: Colors.white));

  }
}

