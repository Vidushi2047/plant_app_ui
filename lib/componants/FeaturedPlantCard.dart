import 'package:flutter/material.dart';

import '../constant.dart';

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({super.key,this.image,this.press});
  final String ?image;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return  GestureDetector(
      onTap: press,
      child: Container(
      margin: const EdgeInsets.only(left: kdefaultPadding,
      top: kdefaultPadding/2,
      bottom: kdefaultPadding/2),
      width: size.width*0.8,
      height: 184,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(image!,)
        ,fit: BoxFit.cover),
        
      ),
       ),
    );
  }
}