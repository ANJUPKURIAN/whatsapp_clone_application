

import 'package:flutter/material.dart';
import 'package:whatsapp_clone_application/global_widgets/custom_button.dart';
import 'package:whatsapp_clone_application/view/conform_otp/conform_otp.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

// list of country name and code
List<String>countryList =[
"+ 91 - India",

"+ 39 -Italy",

"+ 1 -United States",

"+ 61 - Australia",

"+ 44 - United Kingdom",

 "+ 971 -  United  Arab Emirates",

];


String ? selectDropValue;  // dropdown variable


 @override
  Widget build(BuildContext context) {

   // TextEditingController phonenumberController=TextEditingController(); // for phone number validation

    return  Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.white,
       elevation: 0,
       title: const Text(
        " Enter your  phone number",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          wordSpacing: 1,
        ),
       ),

       centerTitle: true,
       actions: [
        const Icon(
          Icons.more_vert,
          color: Colors.black,
        )
       ],
      ),
      
    body: Container(
     child: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 70),
       child: Column(
        mainAxisSize: MainAxisSize.min,
             children: [
            const Text(" whatsup will need to verify your phone number.",
            style: TextStyle(
              fontSize: 11,
            ),
            ),
           
            const SizedBox(
              height: 15,
            ),
           
        Text(" what's my number?",
        style: TextStyle(
          fontSize: 12,
          color: Colors.black,
        ),
        ),
           
        
        // textfield with dropdown icon
       Padding(
           padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // dropdowmn for countrylist
                 DropdownButton(
                 hint: const Text("select"),
                 value: selectDropValue,
                 items: countryList
                 .map((element)=> DropdownMenuItem(
                 child: Text(element),
                 value: element,
              ))
           .toList(),
         
             onChanged: (value)
             {
         selectDropValue = value;
         setState(() {
                            
         });
             }),
              ],
              ),
         ),

        SizedBox(
          height: 15,
        ),

        Padding(
       padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
         TextField(
                
                obscureText: true,
                decoration: InputDecoration(
                  hintText: " ",
               ),
               textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
         ),
        ]
        ),
        ),

        SizedBox(
          height: 10,
        ),
         
        //  TextField(

        //      enabled: true, // if enabled if false ,textfield is invisible .and if become visible when we pass a data through                         button
        //      cursorColor: Colors.green, // color of cursor
        //      controller: phonenumberController,
        //      decoration:InputDecoration(
        //      hintText: " Phonenumber",
        //      labelText: "Phonenumber",
        //      border:OutlineInputBorder(borderRadius: BorderRadius.circular(20),

        //   ),

        //     ),

        //  ),

         
     SizedBox(
      height: 80,
     ),

   
           CustomButton(
                text: " NEXT",
                textColor: Colors.black,
                 onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>ConformOtp(),
                      ));
                },
              ),

      ],
       ),
    ),
    )
     
     
         
  );
  

  }
}


    
        
         
        
    
  