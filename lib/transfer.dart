import 'package:flutter/material.dart';

import 'Text.dart';


class Transfer extends StatefulWidget {
  const Transfer({ Key? key }) : super(key: key);

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
         child: Textt.text('Service Not Available', Colors.black, 6, FontWeight.w700, 0, 0, 0, 0),
      ),
      
    );
  }
}