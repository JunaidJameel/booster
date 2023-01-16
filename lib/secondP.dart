import 'package:flutter/material.dart';

class SecondPackage extends StatefulWidget {
  const SecondPackage({ Key? key }) : super(key: key);

  @override
  State<SecondPackage> createState() => _SecondPackageState();
}

class _SecondPackageState extends State<SecondPackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text('data   2nd Package'),
      ),
      
    );
  }
}