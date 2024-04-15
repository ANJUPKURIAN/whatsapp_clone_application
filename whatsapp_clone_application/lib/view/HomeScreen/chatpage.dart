import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone_application/core/constants/color_constants.dart';
import 'package:whatsapp_clone_application/core/constants/image_constants.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 5,
              ),
              child: InkWell(
                onTap:(){
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size:25,
                ),
              ),
            ),
            leadingWidth: 20,
            title:Padding(
              padding: EdgeInsets.only(
                top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(ImageConstants.girlImagePng,
                      height: 45,
                      width:45,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Text("Anju",
                          style: TextStyle(fontSize: 19),
                          ),
                          SizedBox(height: 5),
                          Text("online",
                          style: TextStyle(fontSize: 15,
                          color: ColorConstants.primarywhite,
                          ),
                          ),


                        ],
                      ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10,right: 25),
                        child: Icon(Icons.call,
                        size: 25,
                        ),
                        ),

                        Padding(
                        padding: EdgeInsets.only(top: 10,right: 25),
                        child: Icon(CupertinoIcons.video_camera_solid,
                        size: 35,
                        ),
                        ),


                        Padding(
                        padding: EdgeInsets.only(top: 10,right: 25),
                        child: Icon(Icons.more_vert,
                        size: 28,
                        ),
                        ),
                  ],
                ),
                ),
            ),
        ),

        body:Container(
          height: double.infinity,
          width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("ImageConstants.newImagePng",
          ),
          fit: BoxFit.cover,
          ),
        ),
     child: SingleChildScrollView(
      child: Padding(padding:EdgeInsets.only(top:10,left: 8,right: 8,bottom: 80 ),
      child: Column(
        children: [
          Container(
            width: 300,
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.all(8),
            child: Text("dffhghhjhjpop  fujhjjkjk dgfggggg rtuuiioio uyuiiuiii "),
          ),
        ],
      ),
      ),
     ),

        ),
        
    );
  }
}