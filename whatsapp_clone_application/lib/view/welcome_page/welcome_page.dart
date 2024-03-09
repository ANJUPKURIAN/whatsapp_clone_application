import 'package:flutter/material.dart';
//import 'package:whatsapp_clone_application/core/constants/color_constants.dart';
import 'package:whatsapp_clone_application/core/constants/image_constants.dart';
import 'package:whatsapp_clone_application/global_widgets/custom_button.dart';
import 'package:whatsapp_clone_application/view/login_screen/login_screen.dart';



class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(

    body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            
            // 1) text

              Text("Welcome  to  WhatsApp",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black),
              ),

             SizedBox(
              height: 50,
             ),

           //  2) imagescan

           Image.asset(ImageConstants.imageScanPng),
            SizedBox(
              height: 50,
            ),

           // 3) text

            Text("Read our Privacy Policy.Tap 'Agree and Continue' to accept the    Terms of Service.",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black),
            ),
            
           // 4) custombutton
              SizedBox(height :30),

             CustomButton(
                text: " AGREE AND CONTINUE",
                textColor: Colors.black,
                 onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },
              ),

              SizedBox(height: 50),

              // 5) bottomtext1

              Image.asset(ImageConstants.bottomText1Png),
              SizedBox(height: 15),
             
             // 6) bottomtext2

              Image.asset(ImageConstants.bottomText2Png),
            ]
          ),
        ),
    ),
        
   );
  }
}