import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page.dart';
import 'log_in_page.dart';

class SplashPage extends StatefulWidget {
  static const String id = 'splash_page';

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {

  static const String KEYLOGIN = "login";

  @override
  void initState() {
    super.initState();

    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                        height: 80,
                        width: 90,
                        image: AssetImage('assets/images/kala.jpeg')),
                    Text(
                      'KALAKARI',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFE14973)),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Image.asset(
                'assets/images/front.jpeg',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Choose Your Preferences',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            const Text(
              'What is Your',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
            ),
            const Text(
              'Favorite Thing?',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 90,
            ),
            Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                color: const Color(0xFFE14973),
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                onPressed: () {},
                child: const Center(
                    child: Text(
                      'Getting Started....',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )),
              ),
            )
          ],
        ),
      ),

    );
  }

  void whereToGo() async{

    var sharedPref = await SharedPreferences.getInstance();

    var isLoggedIn = sharedPref.getBool(KEYLOGIN);


    Timer(const Duration(seconds: 6), (){

      if(isLoggedIn!=null){
        if(isLoggedIn)
        {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => HomePage(),));
        }
        else
          {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => LoginPage(),));
        }
      }
      else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => LoginPage(),));
      }

    },);
  }
}








