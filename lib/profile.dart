

import 'dart:io';

import 'package:booster/Text.dart';
import 'package:booster/bottom.dart';
import 'package:booster/size_config.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? image;
   Future PickImage() async{
    final image=await ImagePicker().pickImage(source: ImageSource.gallery);
    if(image== null) return;

    final imageTemporary= File(image.path);
   setState(() {
     this.image=imageTemporary;
   }); 
   
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Textt.text('My Profile', Colors.white, 5, FontWeight.w700, 0, 0, 0, 0),
       backgroundColor: Colors.black,
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
           height: 20*SizeConfig.heightMultiplier,
           width: 100*SizeConfig.widthMultiplier,
           decoration: BoxDecoration(
            color: Color.fromARGB(246, 21, 20, 20),
          
            
           ),
           child: Stack(children: [
            Center(
              child: GestureDetector(
                onTap: (){
             PickImage();
                },
                child: (image==null)?
         CircleAvatar(
            backgroundImage:AssetImage('images/Pr.jpg'),
           // backgroundColor: Colors.cyanAccent,
            radius: 70,
            )
            :
         CircleAvatar(
            backgroundImage:FileImage(image!),
            //backgroundColor: Colors.cyanAccent,
            radius: 70,
            )
            ),
            ),
          
           ]
           ),
              ),
                Padding(
              padding: EdgeInsets.symmetric(horizontal: 4*SizeConfig.widthMultiplier, vertical: 2*SizeConfig.heightMultiplier),
              child: TextField(
                
                decoration: InputDecoration(
                   
                  labelText: 'Full Name',
                 
                  labelStyle: TextStyle(color: Colors.black, ),
                ),
              ),
        
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4*SizeConfig.widthMultiplier, vertical: 2*SizeConfig.heightMultiplier),
              child: TextField(
                keyboardType: TextInputType.number,
                
                decoration: InputDecoration(
                   
                  labelText: 'Mobile Number',
                 
                  labelStyle: TextStyle(color: Colors.black, ),
                ),
              ),
              
            ),
              Padding(
              padding: EdgeInsets.symmetric(horizontal: 4*SizeConfig.widthMultiplier, vertical: 2*SizeConfig.heightMultiplier),
              child: TextField(
                keyboardType: TextInputType.name,
                
                decoration: InputDecoration(
                   
                  labelText: 'Location',
                 
                  labelStyle: TextStyle(color: Colors.black, ),
                ),
              ),
              
            ),
        
            Padding(
              padding: EdgeInsets.only(top: 5*SizeConfig.heightMultiplier),
              child: MaterialButton(
                color: Colors.amber,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)=> Bottom()));
              }, child: Textt.text('Update', Colors.black, 5, FontWeight.bold, 0, 1.5, 0, 1.5),),
            ),
            ],
          ),
        )
      
    );
  }

}