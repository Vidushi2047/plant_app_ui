

import 'package:flutter/material.dart';
import 'package:plant_app_ui/constant.dart';
import 'package:plant_app_ui/screens/HomePage.dart';

void main() {
  runApp(  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: kmainColor,
   
    ),
    home:const HomePage(),
  ));
}

