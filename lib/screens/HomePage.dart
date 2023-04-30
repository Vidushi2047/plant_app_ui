import 'package:flutter/material.dart';
import 'package:plant_app_ui/componants/body.dart';
import 'package:plant_app_ui/constant.dart';

import '../componants/bottomNavigationbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kmainColor,
       leading: IconButton(
        onPressed: (){},
         icon: const Icon(Icons.menu),)
      ),
      body:const Body(),
      bottomNavigationBar:const bottomNavigationBar(),
    );
  }
}

