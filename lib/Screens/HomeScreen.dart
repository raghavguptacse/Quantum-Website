import 'package:flutter/material.dart';
import 'package:quantum/Screens/BigScreen/bigMainScreen.dart';
import 'package:quantum/Screens/Constatnts/bigScreenConstants.dart';
import 'package:quantum/Screens/MobileScreen/mobileHome.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatelessWidget {
  static String id = '/homeScreen';
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: ResponsiveBuilder(
        builder: (context,size){
          if(size.isDesktop || size.isLarge || size.isExtraLarge){
            return bigMainScreen();
          }
          else{
            // return bigMainScreen();
            return mobileMainScreen();
          }
        },
      ),
    );
  }
}
