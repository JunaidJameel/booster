import 'package:booster/Text.dart';
import 'package:booster/bottom.dart';
import 'package:booster/size_config.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class BuyPackage extends StatefulWidget {
  const BuyPackage({ Key? key }) : super(key: key);

  @override
  State<BuyPackage> createState() => _BuyPackageState();
}

class _BuyPackageState extends State<BuyPackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding:EdgeInsets.only(top: 10*SizeConfig.heightMultiplier),
                child: Lottie.network('https://assets9.lottiefiles.com/packages/lf20_s2lryxtd.json', height: 30*SizeConfig.heightMultiplier),
              ),
              Textt.text('                        Congratulatons !\n Your Package is Succesfully Subscribed ', Colors.black, 4.7, FontWeight.w600, 0, 5, 0, 10),
              MaterialButton(
            color: Colors.amber,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=> Bottom()));
          }, child: Textt.text('Back to HomePage', Colors.black, 5, FontWeight.bold, 0, 1.5, 0, 1.5),),
            ],
          ),
        ),
      ),
    );
  }
}