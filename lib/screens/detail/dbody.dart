import 'package:flutter/material.dart';
import 'package:plant_app_ui/constant.dart';

import '../../componants/iconContainer.dart';


class dBody extends StatelessWidget {
  const dBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child:Padding(padding:const  EdgeInsets.symmetric(vertical: kdefaultPadding*3),
              child:  Column( 
            children: [
              Align(
                 alignment: Alignment.topLeft,
                child: IconButton(
                 
                
                  padding: const EdgeInsets.symmetric(horizontal: kdefaultPadding),
                  onPressed: (){
                  Navigator.pop(context);
                },
                 icon:const Icon(Icons.arrow_back,color: kmainColor,),
                 ),
              ),
                const IconContainer(
              icon: Icons.wb_sunny,
            ),
           const IconContainer(
              icon: Icons.pin_drop,
            ),
              const IconContainer(
              icon: Icons.water_drop_outlined,
            ),
              const IconContainer(
              icon: Icons.grid_view_rounded,
            ),
           
             
            ],
           ),
           ),
           ),
            Container(
              height: size.height*0.8,
              width: size.width*0.75,
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.only(topLeft:Radius.circular(63),
                bottomLeft: Radius.circular(63)),
                image: const DecorationImage(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
              
              
                  image: AssetImage('assets/images/img.png'),
                  ),
                  boxShadow: [BoxShadow(
                    offset:const  Offset(0, 10),
                    blurRadius: 60,
                    color: kmainColor.withOpacity(0.29)
                  )]
              ),
            )
          ],
        ),
        Padding(padding:const  EdgeInsets.symmetric(horizontal: kdefaultPadding),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Angelica'.toUpperCase(),style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),
                ),
                 Text('Russia'.toUpperCase(),style: TextStyle(color: kmainColor.withOpacity(0.5),fontWeight: FontWeight.w300,fontSize: 20),
                ),
              ],
            ),
            Spacer(),
           const  Text('\$440',style: TextStyle(color: kmainColor,fontSize: 20),),
          ],
        ),),
        Row(
          children: [
            SizedBox(
              width: size.width/2,
              height: 84,
            child: Padding(
              padding: const EdgeInsets.only(top: kdefaultPadding),
              child: TextButton
              (style:const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(kmainColor),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(20))))
              ),onPressed: (){},
               child:const Text('Buy Now'
               ,style: TextStyle(
                color: Colors.white,fontSize: 18),)),
                
            ),
            ),
            Expanded(child: TextButton(onPressed: (){}, child:const Text('Despription',style: TextStyle(color: Colors.black54,fontSize: 18),)))
          ],
        )
      ],
    ),
    );
  }
}

