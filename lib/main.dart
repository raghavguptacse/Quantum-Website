import 'package:flutter/material.dart';
import 'package:quantum/Screens/HomeScreen.dart';
import 'package:responsive_builder/responsive_builder.dart';
void main() {
  runApp(init());
}

class init extends StatelessWidget {
  const init({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id:(context)=>HomeScreen()
      },
    );
  }
}

