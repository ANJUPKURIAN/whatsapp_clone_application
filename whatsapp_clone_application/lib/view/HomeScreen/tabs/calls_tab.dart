//import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone_application/core/constants/image_constants.dart';
// import 'package:whatsapp_clone_application/view/HomeScreen/tabs/widgets/custom_chat_card.dart';
// import 'package:whatsapp_clone_application/view/dummydb.dart';

class CallsTab extends StatelessWidget {
  const CallsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric( horizontal: 15,vertical: 5 ),
          child: Column(
            children: [
              for(int i=1;i<3;i++)
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(ImageConstants.pexelImage2Png,
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                      ),
                    ),
                    Padding(padding:EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Divya",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(Icons.call_made,
                            color: Colors.green,
                            size: 19,
                            ),

                            SizedBox(
                              width: 5,
                            ),
                            Text("(1) Today , 9:35 am",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                            ),

                          ],
                        ),

                      ],
                    ),
                    ),
        
                  Spacer(),
                  Container(
                    child: Icon(Icons.call_sharp,
                    color:Colors.green,),
                  ),
                 ],
              ),
              ),

            // 2nd part - video call
        for(int i=4;i<6;i++)
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(ImageConstants.newImagePng,
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                      ),
                    ),
                    Padding(padding:EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Miya",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(Icons.call_made,
                            color: Colors.green,
                            size: 19,
                            ),

                            SizedBox(
                              width: 5,
                            ),
                            Text("(2) yesterday , 7.45 pm",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                            ),

                          ],
                        ),

                      ],
                    ),
                    ),
        
                  Spacer(),
                  Container(
                    child: Icon(CupertinoIcons.videocam_fill,
                    color:Colors.green,
                    ),
                  ),
                
                // 2nd part,

                ],
              ),
              ),


















            ],
          ),
        ),
            
     );
  }
}