import 'package:flutter/material.dart';

class WeddingMakeup extends StatelessWidget {
  static const String id = 'wedding_makeup';

  const WeddingMakeup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xfff3e7e9),
        body: GridView.count(
      crossAxisCount: 2,
      children: const [
        Padding(
          padding: EdgeInsets.all(2.0),
          child: Image(image: AssetImage('assets/images/wedding_makeup/w1.jpeg'),),
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: Image(image: AssetImage('assets/images/wedding_makeup/w2.jpeg'),),
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: Image(image: AssetImage('assets/images/wedding_makeup/w3.jpeg'),),
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: Image(image: AssetImage('assets/images/wedding_makeup/w4.jpeg'),),
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: Image(image: AssetImage('assets/images/wedding_makeup/w5.jpeg'),),
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: Image(image: AssetImage('assets/images/wedding_makeup/w6.jpeg'),),
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: Image(image: AssetImage('assets/images/wedding_makeup/w7.jpeg'),),
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: Image(image: AssetImage('assets/images/wedding_makeup/w8.jpeg'),),
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: Image(image: AssetImage('assets/images/wedding_makeup/w9.jpeg'),),
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
          child: Image(image: AssetImage('assets/images/wedding_makeup/w10.jpeg'),),
        )
      ],
    ));
  }
}
