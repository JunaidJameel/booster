

import 'package:booster/size_config.dart';
import 'package:flutter/cupertino.dart';


 import 'package:flutter/material.dart';

class Textt{
  static Widget text(String title, Color, double Size,FontWeight fontWeight ,double left, double top, double right, double bottom){
    return Padding(
      padding: EdgeInsets.fromLTRB( left*SizeConfig.widthMultiplier, top*SizeConfig.heightMultiplier, right*SizeConfig.widthMultiplier, bottom*SizeConfig.heightMultiplier),
      child: Text('$title', style: TextStyle(
        fontSize: Size*SizeConfig.widthMultiplier, fontWeight: fontWeight, color: Color,
      ),),
    );
  }
}