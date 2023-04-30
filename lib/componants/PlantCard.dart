import 'package:flutter/material.dart';

import '../constant.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({super.key,this.country,this.image,this.price,this.title,this.onpress});
  final String ?image;
 final String? title;
 final String?country;
  final int? price;
  final VoidCallback? onpress;

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return  GestureDetector(
      onTap: onpress,
      child:  Container(
         margin:const EdgeInsets.only(left: kdefaultPadding,
              top: kdefaultPadding/2,
              bottom: kdefaultPadding*2.5),
        width: size.width*0.4,
        child: Column(
          children: [
            Image.asset(image!),
            Container(
             
              padding: const EdgeInsets.all(kdefaultPadding/2),
              
              decoration:  BoxDecoration(
                
                color: Colors.white,
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                boxShadow:[ BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 50,
                  color: kmainColor.withOpacity(0.23),
                )
                ]
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title!.toUpperCase(),style: const TextStyle(
                          color: Colors.black54
                        )),
                        Text(country!.toUpperCase(),style: TextStyle(
                          color: kmainColor.withOpacity(0.5)))
                    ],
                  ),
                    Spacer(),
                 
                
                Text(price!.toString(),
                  style:const  TextStyle(
                    color: Colors.black87
                  ),
                  ),
                ],
              ),
            )
          ],
        ),
       ),
    ) ;
  }
}


