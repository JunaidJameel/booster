import 'package:booster/BuyPackage.dart';
import 'package:booster/Text.dart';
import 'package:booster/model.dart';
import 'package:booster/size_config.dart';
import 'package:booster/variables.dart';
import 'package:flutter/material.dart';


class Packages extends StatefulWidget {
  const Packages({ Key? key }) : super(key: key);

  @override
  State<Packages> createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
  void _modalBottomSheetMenu(Data data){
        showModalBottomSheet(
         backgroundColor: Colors.transparent,
          isScrollControlled: true,
            context: context,
            builder: (builder){
              return  Container(
             
               height: 80*SizeConfig.heightMultiplier,
          
              
                           
                child:  Container(
                    decoration:  BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25))
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 7*SizeConfig.widthMultiplier, top: 3.2*SizeConfig.heightMultiplier),
                          child: Row(
                            children: [
                              Container(
                              height: 10*SizeConfig.heightMultiplier,
                              width: 19*SizeConfig.widthMultiplier,
                       decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30*SizeConfig.heightMultiplier),
                               color: data.Color1,
                       ),
                       child: Icon(data.iconData, color: data.Color, size: 5*SizeConfig.heightMultiplier,),
                                            
                      ),
                            ],
                          ),
                        ),
                          Row(
                                children: [
                  Textt.text(data.title, Colors.black, 5.2, FontWeight.w700, 8, 3, 0, 0.5),
                  
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                  
                  
                   Textt.text(data.dataPackage, Colors.black, 5, FontWeight.w700, 8, 1.5, 0, 1),
                   
                                ],
                              ),
                              Textt.text('Information', Colors.black, 5, FontWeight.w800, 0, 2, 57.2, 0),
                              Textt.text(data.discription, Color.fromARGB(255, 133, 133, 133), 4, FontWeight.w400, 8, 2, 2, 0),
                             Padding(
                               padding: EdgeInsets.symmetric(horizontal: 8*SizeConfig.widthMultiplier, vertical: 2*SizeConfig.heightMultiplier),
                               child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                     Container(
                                      height: 20*SizeConfig.heightMultiplier,
                                      width: 42*SizeConfig.widthMultiplier,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                        color: Color.fromARGB(255, 236, 236, 236),

                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(data.iconData,size: 6*SizeConfig.heightMultiplier,),
                                          Textt.text(data.info1, Colors.black, 4, FontWeight.w600, 0, 2, 0, 0),
                                        ],
                                      ),
                                   
                                     ),
                                     Container(
                                        height: 20*SizeConfig.heightMultiplier,
                                        width: 0.3*SizeConfig.widthMultiplier,
                                        color: Color.fromARGB(255, 188, 188, 188),
                                      ),
                                      Container(
                                        
                                      height: 20*SizeConfig.heightMultiplier,
                                      width: 41.5*SizeConfig.widthMultiplier,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                                          color: Color.fromARGB(255, 236, 236, 236),
                                      ),
                                       child: Center(
                                        child: Column(
                                             mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(data.iconData1, color: data.Color,size: 6*SizeConfig.heightMultiplier,),
                                              Textt.text(data.info2, Colors.black, 4, FontWeight.w600, 0, 2, 0, 0),
                                          ],
                                        ),
                                        
                                      ),
                                     )
                                ],
                               ),
                             ),

                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.2*SizeConfig.widthMultiplier,vertical: 4*SizeConfig.heightMultiplier),
                                child: Row(
                                  children: [
                                     Textt.text('Price : ', Colors.black, 5.2, FontWeight.w600, 0, 0, 0, 0),
                                    Textt.text('\$'+data.price.toString(), Colors.black, 6, FontWeight.w700, 0, 0, 0, 0),
                                    Spacer(),
                                     MaterialButton(
            color: Colors.amber,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            elevation: 5,
            onPressed: (){
              Variables.balance=  Variables.balance-data.price;
         Navigator.push(context, MaterialPageRoute(builder: (context)=> BuyPackage()));
         
          }, child: Textt.text('Buy Package', Colors.black, 5, FontWeight.bold, 2, 1.5, 2, 1.5),),
                                  ],
                                ),
                              )
                      ],
                    ),
                    
                    ),
              );
            }
        );
      }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color.fromARGB(222, 202, 199, 199),
      body: Stack(
        children: [
          Container(
            height: 40*SizeConfig.heightMultiplier,
            width: 100*SizeConfig.widthMultiplier,
            color: Colors.black,
            child: SafeArea(
              child: Column(
              children: [
                Row(
                  children: [
                   
                   Textt.text('All Packages', Colors.white, 5.5, FontWeight.w700, 8, 6, 0, 1.2),
                   
                  ],
                ),
                Row(
                  children: [
                    Textt.text('Find the right package for you', Colors.grey, 3.8, FontWeight.w600, 8, 0, 0, 3)
                  ],
                )
              ],
                    ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20*SizeConfig.heightMultiplier),
            child: Center(
              child: Container(
                height: 100*SizeConfig.heightMultiplier,
                width: 80*SizeConfig.widthMultiplier,
                //color: Colors.amber,
                child: ListView.builder(
                
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index){
                  return Container(
                        margin: EdgeInsets.only(top: 3*SizeConfig.widthMultiplier),
                        height: 26*SizeConfig.heightMultiplier,
                        width: 60*SizeConfig.widthMultiplier,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          border: Border.all(
                    color: Color.fromARGB(148, 196, 196, 196),
                    width: 0.6,
                  ),
                  borderRadius: BorderRadius.circular(20)
                        ),
                    
                          child: Column(
                            children: [
                              Row(
                                children: [
                  Padding(
                    padding:EdgeInsets.only(left: 4*SizeConfig.widthMultiplier, top: 1.5*SizeConfig.heightMultiplier),
                    child: Container(
                      height: 5.8*SizeConfig.heightMultiplier,
                      width: 12*SizeConfig.widthMultiplier,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                       color: data[index].Color1,
                     ),
                     child: Icon(data[index].iconData, color: data[index].Color),
                  
                    ),
                  ),
                                ],
                              ),
                              Row(
                                children: [
                  Textt.text(data[index].title, Colors.black, 4, FontWeight.w800, 5, 2, 0, 0.5),
                  
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                  
                  
                   Textt.text(data[index].dataPackage, Colors.black, 4, FontWeight.w800, 5, 0.5, 0, 1),
                    Padding(
                      padding: EdgeInsets.only(right: 1.8*SizeConfig.widthMultiplier),
                      child: Textt.text('\$'+data[index].price.toString(), Colors.black, 4, FontWeight.w800, 2, 0.5, 0, 1),
                    ),
                                ],
                              ),
                  
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 1*SizeConfig.heightMultiplier),
                                child: MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                color: Color.fromARGB(255, 255, 197, 111),  
                  onPressed: (){
                index==0 ? _modalBottomSheetMenu(data[index] ) :   index==1 ? _modalBottomSheetMenu(data[index] ) : index==2 ? _modalBottomSheetMenu(data[index] ) : index==3 ? _modalBottomSheetMenu(data[index] ) : index==4 ? _modalBottomSheetMenu(data[index] ) : index==5 ? _modalBottomSheetMenu(data[index] ) : index==6 ? _modalBottomSheetMenu(data[index] ) : _modalBottomSheetMenu(data[index]) ;

                  }, child: Textt.text('Get Package', Colors.black, 4, FontWeight.w800, 5, 0, 5, 0),),
                              )
                            ],
                  
                          
                          )
                      );
                }),
              ),
            ),
          )
        ],
      ),
      
    );
  }
}