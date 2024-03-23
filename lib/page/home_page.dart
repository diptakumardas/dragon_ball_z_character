import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:random_api_calling/services/network_manager.dart';
import 'package:random_api_calling/view/swiper.dart';

import '../view/card_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Image.asset("images/appbarr.png",scale: 8,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Swiperr(),
              SizedBox(
                height: 10,
              ),
              Text("All Character",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black,fontSize: 20),),
              SizedBox(
                height: 8,
              ),
              Character(),
          
            ],
          ),
        ),
      ),
    );
  }
}
