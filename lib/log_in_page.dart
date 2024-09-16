import 'package:beauty_app/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page.dart';

class LoginPage extends StatelessWidget{
  get uNameController => null;
  get passController => null;

  @override
  Widget build(BuildContext context) => Scaffold(
    body: SafeArea(
      child: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: RadialGradient(
                colors: [
                  Color(0xffdad4ec), Color(0xfff3e7e9),
                ]
            )
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Center(
              child: AnimatedOpacity(
                opacity: 0.9, duration: const Duration(seconds: 2),
                child: SizedBox(
                  child: Column(
                    children: [
                      const SizedBox(height: 20,),
                      Stack(
                        children: [
                          Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(300),topRight: Radius.circular(70), bottomLeft: Radius.circular(70),bottomRight: Radius.circular(300),),
                              child: Image(
                                  height: 80,
                                  width: 80,
                                  image: AssetImage('assets/images/kala.jpeg')),
                            ),
                            const SizedBox(width: 7,),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Welcome',
                                  style: TextStyle(fontFamily: 'FontMain', fontSize: 26),),
                                Text('to Kalakari', style: TextStyle(fontSize: 20, color: Color(0xFFE14973)),)
                              ],
                            ),
                          ],
                        ),
                       ],
                      ),
                      const SizedBox(height: 50,),
                      const Center(child: Text('Log in',
                        style: TextStyle(fontSize: 24,
                            color: Color(0xff2D3142)),
                      ),
                      ),
                      const SizedBox(height: 20,),

                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextField(
                          controller: uNameController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              label: const Text('Email'),
                              hintStyle: const TextStyle(fontSize: 17),
                              filled: true,
                              fillColor: const Color(0xffF8F9FA),
                              prefixIcon: const Icon(Icons.alternate_email,
                                color: Color(0xff323F4B),),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.pink,),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(0xffE4E7EB),),
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                        child: TextField(
                          controller: passController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              label: const Text('Password'),
                              hintStyle: const TextStyle(fontSize: 17),
                              filled: true,
                              fillColor: const Color(0xffF8F9FA),
                              prefixIcon: const Icon(Icons.lock_open,
                                color: Color(0xff323F4B),),
                              suffixIcon: const Icon(Icons.visibility_off),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.pink,),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(0xffE4E7EB),),
                                  borderRadius: BorderRadius.circular(10)
                              ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 230, top: 10),
                        child: Text('Forgot Password?',
                          style: TextStyle(fontSize: 16,
                              decoration: TextDecoration.underline),),
                      ),

                      const SizedBox(height: 48,),
                  ElevatedButton(onPressed: () async{
                    //If Successfully Logged in (Creds are Correct)

                    var sharedPref = await SharedPreferences.getInstance();
                    sharedPref.setBool(SplashPageState.KEYLOGIN, true);

                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) =>
                        const HomePage(),));
                  }, child: const Text('Log In'),
                  ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account?",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16),),
                          TextButton(onPressed: (){
                            print('Text Button Tapped');
                          }, child: const Text('Sign Up',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16,
                                color: Color(0xFFE14973)),))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
