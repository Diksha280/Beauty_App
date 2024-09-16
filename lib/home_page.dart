import 'package:beauty_app/makeup_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String id = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Center(
        child: Text('Kalakari',
          style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.w900,
          ),),
      ),
          backgroundColor: const Color(0xFFE14973)),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children:  [
              const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Color(0xFFE14973)),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/kala.jpeg'),
                  ),
                  accountName: Text('Diksha Kotang'),
                  accountEmail: Text('dikshakotang@gmail.com')),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: (){
                  Navigator.pushNamed(context, id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.help_center_rounded),
                title: const Text('Help'),
                onTap: (){
                  Navigator.pushNamed(context, id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.question_answer),
                title: const Text('FeedBack'),
                onTap: (){},
              ),
              const ListTile(
                leading: Icon(Icons.group_add),
                title: Text('Invite Friends'),
              ),
              const ListTile(
                leading: Icon(Icons.rate_review),
                title: Text('Rate the App'),
              ),
              const ListTile(
                leading: Icon(Icons.info),
                title: Text('About Us'),
              ),
              const SizedBox(height: 130,),
              Divider(height: 12, color: Colors.black.withOpacity(0.2),),
              const Padding(
                padding: EdgeInsets.all(14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Sign Out', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                    SizedBox(width: 190,),
                    Icon(Icons.logout, color: Colors.redAccent,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.pinkAccent.withOpacity(0.1),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 30,
              width: 400,
              color: Colors.pinkAccent.withOpacity(0.2),
              child: const Center(child: Text('GET 50% OFF ON YOUR FIRST ORDER',
                style: TextStyle(color: Colors.black45),)),
            ),
            Row(
              children: [
                Container(
                  height: 200,
                  width: 140.6,
                  color: Colors.pinkAccent.withOpacity(0.3),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('It is Your',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
                        Text('Shine Time',
                          style: TextStyle(fontSize: 20, color: Color(0xFFE14973) ),)
                      ],
                    ),
                  ),
                ),
                const Image(image: AssetImage('assets/images/hombeauty.jpeg',)),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 12, bottom: 3),
              child: Text('Get Your Montly Dose of Glam',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),),
            ),
            const Text('Beauty is power; a smile is its sword.'),

            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              border: Border.all(color: Colors.white.withOpacity(0.3), width: 4),
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25),),
                              boxShadow: [BoxShadow(blurRadius: 3,
                                  spreadRadius: 3,
                                  color: Colors.pinkAccent.shade100)]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('MAKE UP', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                              const Text('Save 50%', style: TextStyle(color: Colors.red),),
                              const SizedBox(height: 11,),
                              Container(
                                height: 40,
                                width: 90,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFE14973),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25),),
                                ),
                                child: TextButton(onPressed: (){
                                  Navigator.pushNamed(context, MakeupPage.id);
                                }, child: const Text('Go',style: TextStyle(color: Colors.white, fontSize: 18),)),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 26,),
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              border: Border.all(color: Colors.white.withOpacity(0.3), width: 4),
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25),),
                              boxShadow: [BoxShadow(blurRadius: 3,
                                  spreadRadius: 3,
                                  color: Colors.pinkAccent.shade100)]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('HAIR', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                              const Text('Save 50%', style: TextStyle(color: Colors.red),),
                              const SizedBox(height: 11,),
                              Container(
                                height: 40,
                                width: 90,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFE14973),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25),),
                                ),
                                child: TextButton(onPressed: (){
                                }, child: const Text('Go',style: TextStyle(color: Colors.white, fontSize: 18),)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              border: Border.all(color: Colors.white.withOpacity(0.3), width: 4),
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25),),
                              boxShadow: [BoxShadow(blurRadius: 3,
                                  spreadRadius: 3,
                                  color: Colors.pinkAccent.shade100)]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('NAIL', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                              const Text('Save 40%', style: TextStyle(color: Colors.red),),
                              const SizedBox(height: 11,),
                              Container(
                                height: 40,
                                width: 90,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFE14973),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25),),
                                ),
                                child: TextButton(onPressed: (){
                                }, child: const Text('Go',style: TextStyle(color: Colors.white, fontSize: 18),)),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 26,),
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              border: Border.all(color: Colors.white.withOpacity(0.3), width: 4),
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25),),
                              boxShadow: [BoxShadow(blurRadius: 3,
                                  spreadRadius: 3,
                                  color: Colors.pinkAccent.shade100)]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('SPA', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                              const Text('Save 30%', style: TextStyle(color: Colors.red),),
                              const SizedBox(height: 11,),
                              Container(
                                height: 40,
                                width: 90,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFE14973),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25),),
                                ),
                                child: TextButton(onPressed: (){
                                }, child: const Text('Go',style: TextStyle(color: Colors.white, fontSize: 18),)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              border: Border.all(color: Colors.white.withOpacity(0.3), width: 4),
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25),),
                              boxShadow: [BoxShadow(blurRadius: 3,
                                  spreadRadius: 3,
                                  color: Colors.pinkAccent.shade100)]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('MEHENDI', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                              const Text('Exclusive Designs', style: TextStyle(color: Colors.red),),
                              const SizedBox(height: 11,),
                              Container(
                                height: 40,
                                width: 90,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFE14973),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25),),
                                ),
                                child: TextButton(onPressed: (){
                                }, child: const Text('Go',style: TextStyle(color: Colors.white, fontSize: 18),)),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 26,),
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              border: Border.all(color: Colors.white.withOpacity(0.3), width: 4),
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25),),
                              boxShadow: [BoxShadow(blurRadius: 3,
                                  spreadRadius: 3,
                                  color: Colors.pinkAccent.shade100)]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('SKIN TREATMENT', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                              const Text('Save 50%', style: TextStyle(color: Colors.red),),
                              const SizedBox(height: 11,),
                              Container(
                                height: 40,
                                width: 90,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFE14973),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25),),
                                ),
                                child: TextButton(onPressed: (){
                                }, child: const Text('Go',style: TextStyle(color: Colors.white, fontSize: 18),)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              border: Border.all(color: Colors.white.withOpacity(0.3), width: 4),
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25),),
                              boxShadow: [BoxShadow(blurRadius: 3,
                                  spreadRadius: 3,
                                  color: Colors.pinkAccent.shade100)]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('PHOTO SHOOT', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                              const Text('Save 20%', style: TextStyle(color: Colors.red),),
                              const SizedBox(height: 11,),
                              Container(
                                height: 40,
                                width: 90,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFE14973),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25),),
                                ),
                                child: TextButton(onPressed: (){
                                }, child: const Text('Go',style: TextStyle(color: Colors.white, fontSize: 18),)),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 26,),
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              border: Border.all(color: Colors.white.withOpacity(0.3), width: 4),
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25),),
                              boxShadow: [BoxShadow(blurRadius: 3,
                                  spreadRadius: 3,
                                  color: Colors.pinkAccent.shade100)]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('SKIN CARE', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                              const Text('Save 50%', style: TextStyle(color: Colors.red),),
                              const SizedBox(height: 11,),
                              Container(
                                height: 40,
                                width: 90,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFE14973),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25),),
                                ),
                                child: TextButton(onPressed: (){
                                }, child: const Text('Go',style: TextStyle(color: Colors.white, fontSize: 18),)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              border: Border.all(color: Colors.white.withOpacity(0.3), width: 4),
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25),),
                              boxShadow: [BoxShadow(blurRadius: 3,
                                  spreadRadius: 3,
                                  color: Colors.pinkAccent.shade100)]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('BODY WAX', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                              const Text('Save 50%', style: TextStyle(color: Colors.red),),
                              const SizedBox(height: 11,),
                              Container(
                                height: 40,
                                width: 90,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFE14973),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25),),
                                ),
                                child: TextButton(onPressed: (){
                                }, child: const Text('Go',style: TextStyle(color: Colors.white, fontSize: 18),)),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 26,),
                        Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.6),
                              border: Border.all(color: Colors.white.withOpacity(0.3), width: 4),
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25),),
                              boxShadow: [BoxShadow(blurRadius: 3,
                                  spreadRadius: 3,
                                  color: Colors.pinkAccent.shade100)]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('BODY MASSAGE', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                              const Text('Save 50%', style: TextStyle(color: Colors.red),),
                              const SizedBox(height: 11,),
                              Container(
                                height: 40,
                                width: 90,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFE14973),
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25),),
                                ),
                                child: TextButton(onPressed: (){
                                }, child: const Text('Go',style: TextStyle(color: Colors.white, fontSize: 18),)),
                              )
                            ],
                          ),
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}