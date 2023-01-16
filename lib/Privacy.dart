import 'package:booster/Text.dart';
import 'package:booster/size_config.dart';
import 'package:flutter/material.dart';

class Privacy extends StatefulWidget {
  const Privacy({ Key? key }) : super(key: key);

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Textt.text('Terms & Conditions', Colors.white, 5, FontWeight.w700, 0, 0, 0, 0),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5*SizeConfig.widthMultiplier, vertical: 4*SizeConfig.heightMultiplier),
        child: Column(
          children: [
            Row(
              children: [
                Textt.text('Privacy Policy', Colors.black, 4.8, FontWeight.w600, 0.5, 0,0, 4),
              ],
            ),
            Textt.text('Jazz is committed to the privacy of its customers and the visitors to this website. The website utilizes a high degree of encryption on information sent over the Internet and on information stored within its system. The following policies outline other specific protections that Jazz has in place.', Color.fromARGB(255, 68, 68, 68), 4.2, FontWeight.w500, 0, 0, 0, 0),
          ],
        ),
      ),
    );
  }
}