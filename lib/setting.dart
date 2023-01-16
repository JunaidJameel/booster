import 'dart:ui';

import 'package:booster/About.dart';
import 'package:booster/Licenses.dart';
import 'package:booster/Privacy.dart';
import 'package:booster/Terms.dart';
import 'package:booster/Text.dart';
import 'package:booster/bottom.dart';
import 'package:booster/model.dart';
import 'package:booster/profile.dart';
import 'package:booster/size_config.dart';
import 'package:flutter/material.dart';


class Settings extends StatefulWidget {
  const Settings({ Key? key }) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  void _modalOfBottomSheetMenu(){
        showModalBottomSheet(
         backgroundColor: Colors.transparent,
          isScrollControlled: true,
            context: context,
            builder: (builder){
              return SingleChildScrollView(
                child: Container(
                  height: 52*SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(8*SizeConfig.widthMultiplier),topRight: Radius.circular(8*SizeConfig.widthMultiplier))
                    
                  
                  ),
                  
                  child: Expanded(
                   // height: 10*SizeConfig.heightMultiplier,
                    child: ListView.builder(
                      itemCount: expension.length,
                      itemBuilder: (BuildContext context, int index){
                      return   Card(
                        
                         shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.only(topLeft: Radius.circular(10*SizeConfig.widthMultiplier), topRight: Radius.circular(10*SizeConfig.widthMultiplier)),	
  ),
                        child: ExpansionTile(
                                        
                                        title: Textt.text(expension[index].question, Colors.black, 4.5, FontWeight.bold, 0, 0, 0, 0),
                                      children: [
                                        Divider(),
                                         Row(
                                           children: [
                                             Textt.text(expension[index].ans, Colors.black, 4, FontWeight.bold, 4, 2, 0, 2),
                                           ],
                                         ),
                                        
                                      ],
                                      ),
                      );
                    }),
                  )
                ),
              );
                  
              }
        );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
     // centerTitle: true,
    
      backgroundColor: Colors.black, 
      title: Textt.text('Settings', Colors.white, 5, FontWeight.w700, 0, 0, 0, 0),
     ),
      body: Column(
        children: [
          Container(
            height: 50*SizeConfig.heightMultiplier,
            child: ListView.builder(
              itemCount: tileData.length,
              itemBuilder: (BuildContext context, int index){
              return Padding(
                padding: EdgeInsets.only(top: 0.5*SizeConfig.heightMultiplier),
                child: Card(
                  elevation: 2,
                  child: GestureDetector(
                    onTap: (){
                      if(index==0){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Bottom()));
                      
                       
                      }
                      else if(index==1){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> Terms()));
                      }
                       else if(index==2){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> Privacy()));
                      }
                      
                       else if(index==3){
                        _modalOfBottomSheetMenu();
                      }
                    },
                    child: ListTile(
                      title: Textt.text(tileData[index].tileTitle, Colors.black, 4.8, FontWeight.w600, 0, 0, 0, 0),
                    ),
                  ),
                ),
              );
            }),
          )
        ],
      )
      
    );
  }
}