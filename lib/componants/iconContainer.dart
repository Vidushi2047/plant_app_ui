import 'package:flutter/material.dart';

import '../constant.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({super.key,this.icon});
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
      Size size=MediaQuery.of(context).size;
    return    Container(
                margin: EdgeInsets.symmetric(vertical: size.height*0.03),
                padding: const EdgeInsets.all(kdefaultPadding/2),
                height: 62,
                width: 62,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 15),
                      blurRadius: 22,
                      color: kmainColor.withOpacity(0.22)
                    ),
                    const BoxShadow(
                      offset: Offset(-15, -15),
                      blurRadius: 20,
                      color: Colors.white
                    ),
                  ]
                ),
                child: Center(
                  child: Icon(icon!,color: kmainColor,),
                ),
               ) ;
  }
}