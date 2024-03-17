import 'package:flutter/material.dart';
import 'package:whatsapp_clone_application/global_widgets/custom_button.dart';
import 'package:whatsapp_clone_application/view/HomeScreen/state_screen.dart';
//import 'package:flutter/services.dart';


class ConformOtp extends StatelessWidget {
const ConformOtp({super.key});
    
 @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.white,
       elevation: 0,
       leading: Icon(
        Icons.arrow_back,
       ),
       title: Text(
        " Enter the OTP Code",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          wordSpacing: 1,
        ),
       ),

       ),
      

      

       body: Center(
           child: Column(
            children: [
            Text(" code has been send to +91 87******21",
           style: TextStyle(
            fontSize: 11,
            ),
            ),

       SizedBox(
              height: 20,
            ),

         // otp typing box


      Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          SizedBox(
            height: 64,
            width: 68,
            child: TextFormField(
              autofocus: true,
              onSaved: (pin1) {},
              onChanged: (value){
               if(value.length ==1){
                FocusScope.of(context).nextFocus();
               }
              },
              keyboardType: TextInputType.number, 
              maxLength: 1,
              decoration: InputDecoration(counterText: "  "),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,

              ),
          ),
      
          
          SizedBox(
            height: 64,
            width: 68,
            child: TextFormField(
              autofocus: true,
              onSaved: (pin2) {},
               onChanged: (value){
               if(value.length ==1){
                FocusScope.of(context).nextFocus();
               }
              },
             keyboardType: TextInputType.number, 
              maxLength: 1,
              decoration: InputDecoration(counterText: " "),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
           ),
          ),

       
         SizedBox(
            height: 64,
            width: 68,
            child: TextFormField(
              autofocus: true,
              onSaved: (pin3) {},
               onChanged: (value){
               if(value.length ==1){
                FocusScope.of(context).nextFocus();
               }
              },
             keyboardType: TextInputType.number, 
              maxLength: 1,
              decoration: InputDecoration(counterText: " "),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
           ),
          ),

          SizedBox(
            height: 64,
            width: 68,
            child: TextFormField(
              autofocus: true,
              onSaved: (pin4) {},
               onChanged: (value){
               if(value.length ==1){
                FocusScope.of(context).nextFocus();
               }
              },
             keyboardType: TextInputType.number, 
              maxLength: 1,
              decoration: InputDecoration(counterText: " "),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge,
           ),
          ),

          ],

     )
     ),

     // resend otp text11
            
    Text(" Resend code in 56s",
           style: TextStyle(
            fontSize: 11,
            ),
            ),

           SizedBox(
            height: 100,
           ),


            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100,vertical: 100),
            child: CustomButton(
                  text: " VERIFY ",
                  textColor: Colors.black,
                   onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>StateScreen(),
                        ));
                  },
                ),
          ),

      ],
          ),
        ),
       
       
   );
  }
}