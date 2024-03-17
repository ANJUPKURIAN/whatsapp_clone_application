import 'package:flutter/material.dart';
import 'package:whatsapp_clone_application/core/constants/image_constants.dart';
//import 'package:whatsapp_clone_application/core/constants/color_constants.dart';
// import 'package:whatsapp_clone_application/view/HomeScreen/tabs/widgets/custom_chat_card.dart';
// import 'package:whatsapp_clone_application/view/dummydb.dart';

class StatusTab extends StatelessWidget {
  const StatusTab({super.key});

  @override
  Widget build(BuildContext context) {
     return SingleChildScrollView(
     child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
      child: Column(
        children: [
          Container(
          margin: EdgeInsets.symmetric(vertical: 12),
          child: Row(
            children: [
              Container(
                padding:EdgeInsets.all(1.5) ,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 3
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset( ImageConstants.girlImagePng,
                  height: 55,
                  width: 55,
                  fit: BoxFit.cover,
                  ),

                  ),
              ),
              Padding(padding: EdgeInsets.only(left: 20),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                Text("My Status",
                style:TextStyle(
                  fontSize: 18,
                fontWeight:FontWeight.bold,
                 ),
                ),

                SizedBox(
                  height: 10,
                ),

                Text(
                  "Today,12.30 am",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color:Colors.black54,
                  ),
                ),
                ],
              ),
              ),

              Spacer(),
              Container(
              child: Icon(Icons.more_vert,
              color:Colors.green
              ),
              ),
            ],
          ),
          ),
        
        SizedBox(
          height: 10,
        ),

          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              " Recent Updates",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize:16,
              color: Colors.black.withOpacity(0.6),
            ),
            ),
          ),
           Container(

            margin: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                Container(

                 padding :EdgeInsets.all(1),
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(
                  color: Colors.grey,width: 3),
                 ),
                ),
              ],
            ),
           ),
        ],
      ),
      ),

      
      
    
    );
  }
}
     

