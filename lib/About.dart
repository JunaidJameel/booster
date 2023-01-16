import 'package:booster/Text.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({ Key? key }) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Textt.text('Frequently Questions', Colors.white, 5, FontWeight.w700, 0, 0, 0, 0),
        backgroundColor: Colors.black,


      ),

      body: Column(
        children: [
          
        ],
      ),
    );
  }
}