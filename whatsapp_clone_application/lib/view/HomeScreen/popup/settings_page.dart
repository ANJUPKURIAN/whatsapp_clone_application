import 'package:flutter/material.dart';
import 'package:whatsapp_clone_application/core/constants/color_constants.dart';
import 'package:whatsapp_clone_application/core/constants/image_constants.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
     // leadingWidth: 60,
      title: Padding(
        padding: const EdgeInsets.only(left:10),
        child: Text(
          "Settings",
       // style:  TextStyle(
        //  fontSize: 20),
          ),
      ),
     ),

     body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 1),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(ImageConstants.girlImagePng,
                      height: 65,
                      width: 65,
                      ),
                    ),
                    Padding(padding: 
                    EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Anju",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        SizedBox(height: 8),
                        Text("Hey there, I am using  whatsapp. ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: ColorConstants.primaryblack,
                        ),
                        ),
                      ],
                    ),
                    ),


                  ],
                ),
              ),

              Divider(),
              // 1. first key
              ListTile(
                leading:
                 Padding(
                  padding: EdgeInsets.only( top: 6),
                  child: Icon(Icons.key),
                  ),
                  title: Text("Account",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  ),

                  subtitle: Text("Security notifications, change number",
                  style: TextStyle(fontSize: 15),
                  ),
              ),

            // 2. second key

            ListTile(
                leading:
                 Padding(
                  padding: EdgeInsets.only( top: 6),
                  child: Icon(Icons.lock_outline),
                  ),
                  title: Text("Privacy",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  ),

                  subtitle: Text("Block contacts, disappearing messages",
                  style: TextStyle(fontSize: 15),
                  ),
              ),

            //3. third  key
            ListTile(
                leading:
                 Padding(
                  padding: EdgeInsets.only( top: 6),
                  child: Icon(Icons.insert_emoticon),
                  ),
                  title: Text("Avatar",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  ),

                  subtitle: Text("Create,edit,profile photo",
                  style: TextStyle(fontSize: 15),
                  ),
              ),

        //4. fourth key
             ListTile(
                leading:
                 Padding(
                  padding: EdgeInsets.only( top: 6),
                  child: Icon(Icons.message),
                  ),
                  title: Text("Chats",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  ),

                  subtitle: Text("Theme, wallpapers, chat history",
                  style: TextStyle(fontSize: 15),
                  ),
              ),
            
            // 5. fifth key
             ListTile(
                leading:
                 Padding(
                  padding: EdgeInsets.only( top: 6),
                  child: Icon(Icons.notifications),
                  ),
                  title: Text("Notification",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  ),

                  subtitle: Text("Messages, group & call tones",
                  style: TextStyle(fontSize: 15),
                  ),
              ),

            // 6. 6th key
            ListTile(
                leading:
                 Padding(
                  padding: EdgeInsets.only( top: 6),
                  child: Icon(Icons.data_usage),
                  ),
                  title: Text("Storage and data",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  ),

                  subtitle: Text("Network usage,auto-download",
                  style: TextStyle(fontSize: 15),
                  ),
              ),

             // 7. 7th key
            ListTile(
                leading:
                 Padding(
                  padding: EdgeInsets.only( top: 6),
                  child: Icon(Icons.language),
                  ),
                  title: Text("App language",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  ),

                  subtitle: Text("English(device's language)",
                  style: TextStyle(fontSize: 15),
                  ),
              ),

            // 8. 8th key
            ListTile(
                leading:
                 Padding(
                  padding: EdgeInsets.only( top: 6),
                  child: Icon(Icons.help),
                  ),
                  title: Text("Help",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  ),

                  subtitle: Text("Help center,contact us,privacy policy",
                  style: TextStyle(fontSize: 15),
                  ),
              ),

            // 9. 9th key
            ListTile(
                leading:
                 Padding(
                  padding: EdgeInsets.only( top: 6),
                  child: Icon(Icons.group),
                  ),
                  title: Text("Invite a friend",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  ),
          ),

       // last key
         ListTile(
                leading:
                 Padding(
                  padding: EdgeInsets.only( top: 6),
                  child: Icon(Icons.smartphone
                  ),
                  ),
                  title: Text("App updates",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                  ),
          ),
        ],
          ),
        )
        ),
    // ),

    );
  }
}