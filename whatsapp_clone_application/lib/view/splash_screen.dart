import 'package:flutter/material.dart';
import 'package:whatsapp_clone_application/core/constants/image_constants.dart';
import 'package:whatsapp_clone_application/view/welcome_page/welcome_page.dart';
//import 'package:whatsapp_clone_application/view/splash_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

 @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
 void initState()
  {
      Future.delayed(Duration(seconds: 5)).then((value)
      {
        Navigator.pushReplacement(
          context, MaterialPageRoute(
           builder: (context)=> WelcomePage(),
          ));

         });
           super.initState();
      } 
  
//  setting logos
  
  @override
 
   Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              Image.asset(ImageConstants.whatsappLogoPng),
              
              SizedBox(
                height: 15,
              ),
               
               Image.asset(ImageConstants.whatsappTextPng),

               SizedBox(
                height: 180,
               ),

               Image.asset(ImageConstants.bottomText1Png),
               SizedBox(
                height: 5,
               ),
               Image.asset(ImageConstants.bottomText2Png),
            ],
          ),
          ),
        

       ),
       
      );
   }
}




