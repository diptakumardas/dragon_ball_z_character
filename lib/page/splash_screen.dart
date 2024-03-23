import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:random_api_calling/page/home_page.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height*1,
            width: MediaQuery.sizeOf(context).width*1,
            child: Image.asset("images/splash.png",fit: BoxFit.fitHeight,),
          ),
          SizedBox(
            height: 20,
          ),
          Positioned(
              bottom: 20,
              left: MediaQuery.of(context).size.width / 2 - 20,

              child: SpinKitHourGlass(color: Colors.yellow,size: 40,))
        ],
      ),
    );
  }
}
