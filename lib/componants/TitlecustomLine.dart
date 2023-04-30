import 'package:flutter/material.dart';
import 'package:plant_app_ui/constant.dart';
class TitlecustomLine extends StatelessWidget {
  const TitlecustomLine({super.key,this.label});
  final String? label;

  @override
  Widget build(BuildContext context) {
    
    return  Container(
          height: 24,
          child:  Stack(
            children: [
             Padding(
               padding: const EdgeInsets.only(left: kdefaultPadding/4),
               child:  Text(label!,style: const TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold,
                ),),
             ),
             Positioned(
              
              bottom: 0,
              left: 0,
              right: 0,
              child:  Container(
                margin: const EdgeInsets.only(left: kdefaultPadding/4),
                height: 7,
                color: kmainColor.withOpacity(0.2),
              ))
            ],
          ),
        );
  }
}


