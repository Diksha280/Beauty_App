import 'package:beauty_app/wedding_makeup.dart';
import 'package:flutter/material.dart';


class MakeupPage extends StatelessWidget {
  static const String id = 'makeup_page';
  const MakeupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                children: [
                  Row(
                    children: [
                      const Image(image: AssetImage('assets/images/wedding.jpeg'),),
                      Padding(
                        padding: const EdgeInsets.only(left: 6, top: 20),
                        child: Column(

                          children: [
                            const Text('wedding makeup', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                            const Text('Starting from \n 1000 Rs.', style: TextStyle(fontSize: 12, color: Colors.pinkAccent), ),
                            ElevatedButton(onPressed: (){
                              Navigator.pushNamed(context, WeddingMakeup.id);
                            }, child: const Text('Go'))
                          ],
                        ),
                      )
                    ],
                  ),
                  const Divider(color: Colors.blueGrey,),
                  Container(
                    height: 162,
                    child: Row(
                      children: [

                        const Image(image: AssetImage('assets/images/haldi.jpeg'),),
                        Padding(
                          padding: const EdgeInsets.only(left: 6, top: 30),
                          child: Column(

                            children: [
                              const Text('Haldi makeup', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                              const Text('Starting from \n 1000 Rs.', style: TextStyle(fontSize: 12, color: Colors.pinkAccent), ),
                              ElevatedButton(onPressed: (){}, child: const Text('Go'))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Divider(color: Colors.blueGrey,),
                  Container(
                    height: 162,
                    child: Row(
                      children: [

                        const Image(image: AssetImage('assets/images/party.jpeg'),),
                        Padding(
                          padding: const EdgeInsets.only(left: 6, top: 30),
                          child: Column(

                            children: [
                              const Text('Party makeup \n Looks', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                              const Text('Starting from \n 1000 Rs.', style: TextStyle(fontSize: 12, color: Colors.pinkAccent), ),
                              ElevatedButton(onPressed: (){}, child: const Text('Go'))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Divider(color: Colors.blueGrey,),
                  Container(
                    height: 162,
                    child: Row(
                      children: [

                        const Image(image: AssetImage('assets/images/Mens.jpeg'),),
                        Padding(
                          padding: const EdgeInsets.only(left: 6, top: 30),
                          child: Column(

                            children: [
                              const Text('Men makeup \n Looks', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                              const Text('Starting from \n 1000 Rs.', style: TextStyle(fontSize: 12, color: Colors.pinkAccent), ),
                              ElevatedButton(onPressed: (){}, child: const Text('Go'))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Divider(color: Colors.blueGrey,),
                  Container(
                    height: 153,
                    child: Row(
                      children: [

                        const Image(image: AssetImage('assets/images/allmakeup.webp'),),
                        Padding(
                          padding: const EdgeInsets.only(left: 6, top: 20),
                          child: Column(

                            children: [
                              const Text('All Type \n Makeup \n Looks', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                              const Text('Starting from \n 1000 Rs.', style: TextStyle(fontSize: 12, color: Colors.pinkAccent), ),
                              ElevatedButton(onPressed: (){}, child: const Text('Go'))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                ]
            ),),)
    );
  }
}
