import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'BottomNavi_Bar.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
              child: Container(
            height: 120,
            width: 200,
            decoration: BoxDecoration(),
            child: Image.asset(
              'assets/images/logo.jpg', width: 160,
              fit: BoxFit.scaleDown,
              // color: Colors.white,
            ),
          )),

   TextButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>MainBottomNavBar()));},
       child: Text('NextPage')),
        ],
      ),
    );
  }
}
