import 'package:flutter/material.dart';
import 'package:plant_app_ui/constant.dart';
class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({super.key});

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return  Container(
          margin:const  EdgeInsets.only(bottom: kdefaultPadding*2.5),
           height: size.height*0.2,
           child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(left: kdefaultPadding,
                right: kdefaultPadding,
                bottom: 36+kdefaultPadding),
                height: size.height*0.2-27,
                decoration: const BoxDecoration(
                  color: kmainColor,
                  borderRadius: BorderRadius.only
                  (bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36)),
                
                ),
                child: Row(
                  
                  children: [
                 const   Text('Hi Uishopy!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                      ),
                      Spacer(),
                      Image.asset('assets/images/logo.png'),
                    
                  ],
                ),
                
                
              ),
              Positioned( 
                bottom: 0,
                left: 0,
                right: 0,
              child: Container(
                alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal:kdefaultPadding ),
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 25,
                        color: kmainColor.withOpacity(0.27),
                      )
                    ]
                  ),
                  child:Padding(padding: const EdgeInsets.only(left:10,right: 10),
                  child:  TextField(
                    decoration: InputDecoration(
                      hintText: 'search'
                      ,hintStyle: TextStyle(
                        color: kmainColor.withOpacity(0.5)
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: Icon(Icons.search,color: kmainColor.withOpacity(0.6),)
                    ),
                  ),)
                ),
                ),
              
            ],
           ),
        );
  }
}

