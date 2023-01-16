import 'package:booster/Packages.dart/package.dart';
import 'package:booster/main.dart';
import 'package:booster/profile.dart';
import 'package:booster/setting.dart';
import 'package:booster/size_config.dart';
import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({ Key? key }) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int index=0;
  final screens=[
    MyHome(),
    Packages(),
    Settings(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.pink.shade100,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 4*SizeConfig.widthMultiplier, fontWeight: FontWeight.w600)
          )
        ),
        child: NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (index){
            setState(() {
              this.index=index;
            });
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home', selectedIcon: Icon(Icons.home),),
              NavigationDestination(icon: Icon(Icons.data_array_outlined), label: 'Package', selectedIcon: Icon(Icons.data_array),),
                NavigationDestination(icon: Icon(Icons.settings_outlined), label: 'setting', selectedIcon: Icon(Icons.settings),),
                  NavigationDestination(icon: Icon(Icons.person_outline), label: 'Profile', selectedIcon: Icon(Icons.person),),
          ]
          ),
      ),
    );
  }
}