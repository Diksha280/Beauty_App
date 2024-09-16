import 'package:beauty_app/makeup_page.dart';
import 'package:beauty_app/splash_page.dart';
import 'package:beauty_app/wedding_makeup.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),

      initialRoute: SplashPage.id,

      routes: {
        SplashPage.id : (context) => const SplashPage(),
        HomePage.id : (context) => const HomePage(),
        MakeupPage.id : (context) => const MakeupPage(),
        WeddingMakeup.id : (context) => const WeddingMakeup(),
      },
      // home: HomeScreen(),
    );
  }
}
