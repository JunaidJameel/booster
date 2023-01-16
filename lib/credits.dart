import 'package:booster/Text.dart';
import 'package:booster/size_config.dart';
import 'package:booster/visa.dart';
import 'package:flutter/material.dart';


class Credts extends StatefulWidget {
  const Credts({ Key? key }) : super(key: key);

  @override
  State<Credts> createState() => _CredtsState();
}

class _CredtsState extends State<Credts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
       centerTitle: true,
        title: Text('Recharge'),

      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Visa()));
              },

              child: Card(
                elevation: 15,
                child: ListTile(
                  leading: Image(image: AssetImage('images/visa.png'), height: 3*SizeConfig.heightMultiplier,),
                  title: Padding(
                    padding: EdgeInsets.only(left: 3*SizeConfig.widthMultiplier),
                    child: Text('Pay with', style: TextStyle(color: Color.fromARGB(255, 105, 105, 105)),),
                  ),
                  subtitle: Textt.text('Credit/Debit Card', Colors.black, 4, FontWeight.w700, 3, 0, 0, 0),
                  trailing: Icon(Icons.keyboard_arrow_right_outlined, size: 8*SizeConfig.widthMultiplier,),
                  
                ),
              ),
            ),

            GestureDetector(
              onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=> Visa()));
              },

              child: Card(
                      elevation: 8,
                      child: ListTile(
              leading: Image(image: AssetImage('images/pa.png'), height: 5*SizeConfig.heightMultiplier,),
                       title: Text('Pay with', style: TextStyle(color: Color.fromARGB(255, 105, 105, 105)),),
              subtitle: Textt.text('Pay from Payoneer', Colors.black, 4, FontWeight.w700, 0, 0, 0, 0),
                trailing: Icon(Icons.keyboard_arrow_right_outlined, size: 8*SizeConfig.widthMultiplier,),
                      ),
                    ),
            ),
          ],
        ),
      ),
      
    );
  }
}