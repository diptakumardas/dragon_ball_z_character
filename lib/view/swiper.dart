import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
class Swiperr extends StatefulWidget {
  const Swiperr({super.key});

  @override
  State<Swiperr> createState() => _SwiperrState();
}

class _SwiperrState extends State<Swiperr> {

  List slideshow = [
    "images/goku.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/4.jpg",


  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.28,
        width: MediaQuery.of(context).size.width,
        color: Colors.red,
        child: Swiper(
          autoplay: true,
          loop: true,
          pagination: SwiperPagination(),
          curve: Curves.fastOutSlowIn,
          itemCount: slideshow.length,
          itemBuilder: (context, index) {
            return Image.asset(
              slideshow[index],
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            );
          },
        ))
    ;
  }
}
