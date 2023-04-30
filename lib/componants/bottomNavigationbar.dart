import 'package:flutter/material.dart';

import '../constant.dart';

class bottomNavigationBar extends StatelessWidget {
  const bottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding:const EdgeInsets.only(
          left: kdefaultPadding*2,
          right: kdefaultPadding/2,
          bottom: kdefaultPadding
        ),
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: kmainColor.withOpacity(0.38)
          )]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           IconButton(onPressed: (){}, 
           icon:Icon(Icons.rounded_corner_rounded,color: kmainColor,)),
            IconButton(onPressed: (){}, 
           icon:Icon(Icons.monitor_heart,color: Colors.grey,)),
            IconButton(onPressed: (){}, 
           icon:Icon(Icons.person_2_outlined,color: Colors.grey,))
          ],
        ),
      );
  }
}