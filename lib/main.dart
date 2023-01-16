import 'package:booster/BuyPackage.dart';

import 'package:booster/Text.dart';
import 'package:booster/bottom.dart';
import 'package:booster/credits.dart';
import 'package:booster/model.dart';
import 'package:booster/secondP.dart';
import 'package:booster/size_config.dart';
import 'package:booster/transfer.dart';
import 'package:booster/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Bottom(),
            );
          },
        );
      },
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
 
  void _showDialog(Recomand recomand) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            contentPadding: EdgeInsets.only(top: 10.0),
            title: Textt.text(
                'Confirmation', Colors.black, 5, FontWeight.bold, 15, 0, 0, 0),
            content: Container(
              height: 22 * SizeConfig.heightMultiplier,
              width: 50 * SizeConfig.widthMultiplier,
              child: Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2 * SizeConfig.heightMultiplier,
                          bottom: 2 * SizeConfig.heightMultiplier,
                          left: 3 * SizeConfig.widthMultiplier,
                          right: 3 * SizeConfig.widthMultiplier,
                        ),
                        child: Row(
                          children: [
                            Text(
                              recomand.titleR,
                              style: TextStyle(
                                  fontSize: 4.5 * SizeConfig.widthMultiplier,
                                  fontWeight: FontWeight.w700),
                            ),
                            Spacer(),
                            Container(
                              height: 5.8 * SizeConfig.heightMultiplier,
                              width: 12 * SizeConfig.widthMultiplier,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: recomand.Color1R,
                              ),
                              child: Icon(recomand.iconDataR,
                                  color: recomand.ColorR),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 3 * SizeConfig.widthMultiplier),
                        child: Row(
                          children: [
                            Text(
                              recomand.dataPackageR,
                              style: TextStyle(
                                  fontSize: 4.5 * SizeConfig.widthMultiplier,
                                  fontWeight: FontWeight.w700),
                            ),
                            Spacer(),
                            //   Text('\$'+recomand.priceR.toString(),style: TextStyle(fontSize: 4.7*SizeConfig.widthMultiplier, fontWeight: FontWeight.w700),),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Textt.text(
                              'Total price : ',
                              Color.fromARGB(255, 26, 26, 26),
                              5,
                              FontWeight.w700,
                              3,
                              2,
                              0,
                              0),
                          Textt.text('\$' + recomand.priceR.toString(),
                              Colors.black, 6, FontWeight.bold, 0, 2, 0, 0),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    color: Color.fromARGB(255, 232, 232, 232),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Textt.text(
                        'Cancel', Colors.black, 4, FontWeight.bold, 4, 0, 4, 0),
                  ),
                  MaterialButton(
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {
                      Variables.balance = Variables.balance - recomand.priceR;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BuyPackage()));
                    },
                    child: Textt.text('Subscribe', Colors.black, 4,
                        FontWeight.bold, 0, 0, 0, 0),
                  ),
                ],
              )
            ],
          );
        });
  }
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 47 * SizeConfig.heightMultiplier,
                  width: 100 * SizeConfig.widthMultiplier,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 15, 15, 15)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: 2 * SizeConfig.heightMultiplier,
                                left: 3 * SizeConfig.widthMultiplier),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/Pr.jpg'),
                            ),
                          ),
                          Textt.text('Hi Robin', Colors.white, 4.5,
                              FontWeight.w700, 4, 2, 0, 0),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 2 * SizeConfig.heightMultiplier,
                                left: 36 * SizeConfig.widthMultiplier),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.mail_outline),
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 2 * SizeConfig.heightMultiplier,
                                right: 3 * SizeConfig.widthMultiplier),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.notifications_outlined),
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      // container

                      Padding(
                        padding: EdgeInsets.only(
                            top: 4 * SizeConfig.heightMultiplier),
                        child: Container(
                          height: 23 * SizeConfig.heightMultiplier,
                          width: 85 * SizeConfig.widthMultiplier,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(177, 34, 37, 45)),
                          child: Column(
                            children: [
                              Textt.text('Remaining credit', Colors.grey, 4.4,
                                  FontWeight.w500, 0, 3, 0, 1),
                              Row(
                                children: [
                                  Textt.text(
                                      '\$' + Variables.balance.toString(),
                                      Colors.white,
                                      7,
                                      FontWeight.w700,
                                      27,
                                      1,
                                      0,
                                      0),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6 * SizeConfig.widthMultiplier,
                                    vertical: 2 * SizeConfig.heightMultiplier),
                                child: Divider(
                                  color: Colors.white,
                                  thickness: 0.8,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5 * SizeConfig.widthMultiplier),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.phone_iphone,
                                      color: Colors.white,
                                    ),
                                    Textt.text(
                                        '16.4 GB',
                                        Color.fromARGB(255, 222, 222, 222),
                                        3.5,
                                        FontWeight.w500,
                                        1,
                                        0,
                                        0,
                                        0),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 5 * SizeConfig.widthMultiplier),
                                      child: Icon(
                                        Icons.sms_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal:
                                              3 * SizeConfig.widthMultiplier),
                                      child: Textt.text(
                                          '10,000 Sms',
                                          Color.fromARGB(255, 219, 219, 219),
                                          3.5,
                                          FontWeight.w500,
                                          0,
                                          0,
                                          0,
                                          0),
                                    ),
                                    Icon(
                                      Icons.phone_outlined,
                                      color: Colors.white,
                                    ),
                                    Textt.text(
                                        '45 Min',
                                        Color.fromARGB(255, 224, 224, 224),
                                        3.5,
                                        FontWeight.w500,
                                        2,
                                        0,
                                        0,
                                        0),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 2 * SizeConfig.heightMultiplier),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Transfer()));
                              },
                              color: Color.fromARGB(177, 34, 37, 45),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.swap_vert,
                                    color: Colors.white,
                                  ),
                                  Textt.text(
                                      'Transfer',
                                      Color.fromARGB(255, 217, 217, 217),
                                      4.5,
                                      FontWeight.w600,
                                      5,
                                      1.4,
                                      4,
                                      1.4),
                                ],
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Credts()));
                              },
                              color: Colors.orange,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.add_circle_outline,
                                    color: Colors.white,
                                  ),
                                  Textt.text(
                                      'Credits',
                                      Color.fromARGB(255, 255, 255, 255),
                                      4.5,
                                      FontWeight.w600,
                                      4,
                                      1.4,
                                      3,
                                      1.4),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Textt.text('Recommended', Colors.black, 5.5,
                        FontWeight.w700, 8, 3, 0, 2),
                  ],
                ),
                SizedBox(
                  height: 27 * SizeConfig.heightMultiplier,
                  width: 90 * SizeConfig.widthMultiplier,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: recomand.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            margin: EdgeInsets.only(
                                left: 3 * SizeConfig.widthMultiplier),
                            height: 70 * SizeConfig.heightMultiplier,
                            width: 60 * SizeConfig.widthMultiplier,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 240, 240, 240),
                                border: Border.all(
                                  color: Color.fromARGB(148, 196, 196, 196),
                                  width: 0.6,
                                ),
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 4 * SizeConfig.widthMultiplier,
                                          top: 1.5 *
                                              SizeConfig.heightMultiplier),
                                      child: Container(
                                        height:
                                            5.8 * SizeConfig.heightMultiplier,
                                        width: 12 * SizeConfig.widthMultiplier,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color: data[index].Color1,
                                        ),
                                        child: Icon(recomand[index].iconDataR,
                                            color: recomand[index].ColorR),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Textt.text(
                                        recomand[index].titleR,
                                        Colors.black,
                                        4,
                                        FontWeight.w800,
                                        5,
                                        2,
                                        0,
                                        0.5),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Textt.text(
                                        recomand[index].dataPackageR,
                                        Colors.black,
                                        4,
                                        FontWeight.w800,
                                        5,
                                        0.5,
                                        0,
                                        1),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right:
                                              1.8 * SizeConfig.widthMultiplier),
                                      child: Textt.text(
                                          '\$' +
                                              recomand[index].priceR.toString(),
                                          Colors.black,
                                          4,
                                          FontWeight.w800,
                                          1,
                                          0.5,
                                          0,
                                          1),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical:
                                          1 * SizeConfig.heightMultiplier),
                                  child: MaterialButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    color: Color.fromARGB(255, 255, 197, 111),
                                    onPressed: () {
                                      // index=indexx;
                                      if (index == 0) {
                                        _showDialog(recomand[index]);
                                      } else if (index == 1) {
                                        _showDialog(recomand[index]);
                                      } else if (index == 2) {
                                        _showDialog(recomand[index]);
                                      }
                                    },
                                    child: Textt.text(
                                        'Get Package',
                                        Colors.black,
                                        4,
                                        FontWeight.w800,
                                        5,
                                        0,
                                        5,
                                        0),
                                  ),
                                )
                              ],
                            ));
                      }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
