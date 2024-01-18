import 'package:flutter/material.dart';
import 'package:mohsin_ali/mobile/landing_page_mobile.dart';
import 'package:mohsin_ali/web/landing_page_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //layoutBuilder for responsive screens
      //constraints are basically used to set height and width
      home: LayoutBuilder(
        builder:(context,constraints){
          //maxWidth will give width of device
          if(constraints.maxWidth>800){
            return LandingPageWeb();
          }else{
            return LandingPageMobile();
          }
        } ,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
