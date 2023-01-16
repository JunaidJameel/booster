import 'package:flutter/material.dart';

class Data{
  final  iconData;
  final String title;
  final String dataPackage;
  final double price;
  final Color;
  final Color1;
  final String discription;
  final iconData1;
  final String info1;
  final String info2;
  Data({
    required this.iconData,
    required this.title,
    required this.dataPackage,
    required this.price,
    required this.Color,
    required this.Color1,
    required this.discription,
    required this.iconData1,
    required this.info1,
    required this.info2,
  });
}

List<Data> data=[
 Data(iconData : Icons.phone_outlined, title: 'Call Package', dataPackage: '1,000 Min / 7 Days', price: 20.00, Color: Colors.purple,  Color1: Color.fromARGB(29, 233, 30, 98), discription: 'Now make calls to other Numbers in just \$20.00 Incl.Tax, you can enjoy 1,000 minutes no call setup fee!' , iconData1: Icons.gif_box_outlined, info1: '900 on-net Minutes', info2: '100 off-net Minutes'),
 Data(iconData : Icons.wifi_outlined, title: 'Internet Package', dataPackage: '7 GB / 7 Days', price: 30.00, Color: Colors.blue, Color1: Color.fromARGB(35, 33, 149, 243), discription: 'In this package you can enjoy 7 GB DATA (IMO, WhatsApp, YouTube, Facebook & BiP) for 7 Days in just \$30.00 Incl.Tax.' , iconData1: Icons.gif_box_outlined, info1: '7 GB Internet ', info2: 'Free Facebook'),
 Data(iconData : Icons.sms_outlined, title: 'Sms Package', dataPackage: '1,000 Sms / 7 Days', price: 25.00, Color: Colors.orange, Color1: Color.fromARGB(32, 255, 153, 0), discription: 'In this package you can enjoy 1,000 Sms  to all other networks for 7 Days in just \$25.00 Incl.Tax ! ' , iconData1: Icons.gif_box_outlined, info1: '1,000 Sms', info2: 'For all Networks'),
 Data(iconData : Icons.phone_android_outlined, title: 'Voice Max', dataPackage: '7,000 Min / 7 Days', price: 70.00, Color: Colors.red, Color1: Color.fromARGB(27, 244, 67, 54), discription: 'Now make calls to other Numbers in just \$70.00 Incl.Tax, enjoy 7,000 minutes for 7 days  and no call setup fee!' , iconData1: Icons.gif_box_outlined, info1: '6000 on-net Minutes', info2: '1000 off-net Minutes'),
 Data(iconData : Icons.h_plus_mobiledata_outlined, title: 'Data Max Weekly', dataPackage: '30 GB / 7 Days', price: 100.00, Color: Colors.teal, Color1: Color.fromARGB(28, 0, 150, 135), discription: 'In this package you can enjoy 30 GB DATA (IMO, WhatsApp, YouTube, Facebook & BiP) for 7 Days in just \$100.00 Incl.Tax !' , iconData1: Icons.gif_box_outlined, info1: '30 GB Internet', info2: 'Enjoy 30 GB'),
 // monthly
  Data(iconData : Icons.phone_outlined, title: 'Call Package', dataPackage: '10,000 Min / 30 Days', price: 150.00, Color: Colors.purple,  Color1: Color.fromARGB(29, 233, 30, 98), discription: 'Now make calls to other Numbers in just \$150.00 Incl.Tax, enjoy 10,000 minutes for 30 days  and no call setup fee!' , iconData1: Icons.gif_box_outlined, info1: '8000 on-net Minutes', info2: '1000 off-net Minutes'),
 Data(iconData : Icons.sms_outlined, title: 'Sms Package', dataPackage: '10,000 Sms / 30 Days', price: 80.00, Color: Colors.orange, Color1: Color.fromARGB(32, 255, 153, 0), discription: 'In this package you can enjoy 1,000 Sms  to all other networks for 7 Days in just \$80.00 Incl.Tax, for 30 days!' , iconData1: Icons.gif_box_outlined, info1: '10,000 Sms', info2: 'Free WhatsApp'),
  Data(iconData : Icons.four_g_mobiledata_outlined, title: 'Data Max', dataPackage: '100 GB / 30 Days', price: 250.00, Color: Colors.teal, Color1: Color.fromARGB(28, 0, 150, 135), discription: 'In this package you can enjoy 100 GB DATA (IMO, WhatsApp, YouTube, Facebook & BiP) for 30 Days in just\$250.00 Incl.Tax !' , iconData1: Icons.gif_box_outlined, info1: '100 GB Internet', info2: 'Enjoy 100 GB '),
   Data(iconData : Icons.wifi_calling, title: 'All in One(Min, Sms, Internet)', dataPackage: '5000, 5000, 50 GB /30 Days', price: 250.00, Color: Colors.teal, Color1: Color.fromARGB(28, 0, 150, 135), discription: 'In this package you can enjoy everything (Minutes, Sms and Internet) for 30 Days in just\$250.00 Incl.Tax !' , iconData1: Icons.gif_box_outlined, info1: '100 GB Internet', info2: 'Enjoy 100 GB '),
];


// Recomended

class Recomand{
   final  iconDataR;
  final String titleR;
  final String dataPackageR;
  final double priceR;
  final ColorR;
  final Color1R;
  Recomand({
    required this.iconDataR,
    required this.titleR,
    required this.dataPackageR,
    required this.priceR,
    required this.ColorR,
    required this.Color1R,
    });
}

List<Recomand> recomand=[
  Recomand(iconDataR : Icons.phone_outlined, titleR: 'Call Package', dataPackageR: '10,000 Min / 30 Days', priceR: 150.00, ColorR: Colors.purple,  Color1R: Color.fromARGB(29, 233, 30, 98)),
 Recomand(iconDataR : Icons.sms_outlined, titleR: 'Sms Package', dataPackageR: '10,000 Sms / 30 Days', priceR: 80.00, ColorR: Colors.orange, Color1R: Color.fromARGB(32, 255, 153, 0)),
  Recomand(iconDataR : Icons.wifi, titleR: 'Data Max', dataPackageR: '100 GB / 30 Days', priceR: 250.00, ColorR: Colors.teal, Color1R: Color.fromARGB(28, 0, 150, 135)),
];

class TileData{
  String tileTitle;
  TileData({
    required this.tileTitle,
  });
}
List<TileData> tileData=[
      TileData(tileTitle: 'My Profile'),
      TileData(tileTitle: 'Terms & Conditions'),
      TileData(tileTitle: 'Privacy Policy'),
      
      TileData(tileTitle: 'Frequently Asked Questions'),
      
];



class Expension{
  final String question;
  final String ans;
  Expension({
    required this.question,
    required this.ans,
  });
}


List<Expension> expension=[
  Expension(question: 'How to Buy a Package?', ans: 'Simply choose the Package and Click on\nBuy/Subscribe'),
  Expension(question: 'Can I refund my money?', ans:  'No ! you can"t '),
  Expension(question: 'Can I update my Profile', ans: 'Yes ! Simply go on Profile page and do whatever\nyou want'),
  Expension(question: 'Can I track the Package?', ans: 'Yes ! you can track your packages from home\nPage')
];