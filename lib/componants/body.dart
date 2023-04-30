

import 'package:plant_app_ui/screens/detail/detailScreen.dart';

import 'FeaturedPlantCard.dart';
import 'PlantCard.dart';
import 'HeaderWithSearchBox.dart';

import 'package:flutter/material.dart';
import 'package:plant_app_ui/constant.dart';


import 'TitleViewmoreBtn.dart';


class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return  SingleChildScrollView(
    
      child:  Column(
      children: [
      const  HeaderWithSearchBox(),

     TitleViewmoreBtn(
      label: 'more',
      onpress: () {
        
      },
     ),
   SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child:  Row(
      children: [
         PlantCard(country: 'Russia',
         title: 'samanta',
         price: 440,
         onpress: () {
           Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen()));
         },
         image:'assets/images/image_1.png' ,
         ),
          PlantCard(country: 'Russia',
         title: 'angelica',
         price: 540,
         image:'assets/images/image_2.png' ,
         ),
          PlantCard(country: 'Russia',
         title: 'samanta',
         price: 440,
         image:'assets/images/image_3.png' ,
         ),
      ],
    ),
   ),
   TitleViewmoreBtn(
    label: 'Featured Plan',
    onpress: () {
      
    },
   ),
  

    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:  Row(
       children: [
         FeaturedPlantCard(
          image: 'assets/images/bottom_img_1.png',
          press: (){},
         ),
          FeaturedPlantCard(
          image: 'assets/images/bottom_img_2.png',
          press: (){},
         ),
       ],
     ) ,
    ),
   const  SizedBox(height: kdefaultPadding,)
      ],
    ),
    );
  }
}

