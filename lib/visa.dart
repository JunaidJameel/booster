import 'package:booster/Text.dart';
import 'package:booster/setting.dart';
import 'package:booster/size_config.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

class Visa extends StatefulWidget {
  const Visa({ Key? key }) : super(key: key);

  @override
  State<Visa> createState() => _VisaState();
}

class _VisaState extends State<Visa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Textt.text('Add new Card', Colors.black, 4.8, FontWeight.w700, 5, 10, 0, 5),
              ],
              
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5*SizeConfig.widthMultiplier),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Card Number',
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                  
                  ),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5*SizeConfig.heightMultiplier, bottom: 5*SizeConfig.heightMultiplier),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  
                  Container(
                    height: 10*SizeConfig.heightMultiplier,
                    width: 42*SizeConfig.widthMultiplier,
                    //color: Colors.black,
                    child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Expiry date',
                    hintText: 'MM/YY',
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                    
                    ),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                  ),
                ),
                    
                  ),
                   Container(
                height: 10*SizeConfig.heightMultiplier,
                width: 42*SizeConfig.widthMultiplier,
                //color: Colors.amber,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Cvc/Cvv',
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                    
                    ),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                  ),
                ),
              )
                ],
              ),
            ),
             Padding(
               padding:EdgeInsets.symmetric(horizontal: 5*SizeConfig.widthMultiplier),
               child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Cvc/Cvv',
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                      
                      ),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                    ),
                  ),
             ),
      
             Padding(
               padding: EdgeInsets.only(top: 5*SizeConfig.heightMultiplier),
               child: MaterialButton(
                color: Colors.amber,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Settings()));
               },
               child: Textt.text('Transction', Colors.black, 5, FontWeight.bold, 5, 1.2, 5, 1.2),
               ),
             )
          ],
        ),
      )
    );
  }
}