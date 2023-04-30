import 'package:flutter/material.dart';
import 'package:plant_app_ui/constant.dart';

import 'TitlecustomLine.dart';
class TitleViewmoreBtn extends StatelessWidget {
 const TitleViewmoreBtn({super.key,this.label,this.onpress});
  final String? label;
  final VoidCallback? onpress;

  @override
  Widget build(BuildContext context) {
    return  Padding(padding:const EdgeInsets.only(
    left: kdefaultPadding,right: kdefaultPadding
   ),
   child:    
       Row( 
         children: [
          const  TitlecustomLine(
              label: 'Recommended',
            ),
          const  Spacer(),
            TextButton(
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(borderRadius:BorderRadius.circular(20))
                ),
              backgroundColor:const MaterialStatePropertyAll(Color(0xff0C9869))
              ),
            onPressed:onpress,
            
             child: Text(label!,
             style: const TextStyle(
              color: Colors.white),)
             ),
         ],
       ),);
  }
}