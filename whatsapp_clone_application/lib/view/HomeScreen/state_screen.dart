import 'package:flutter/material.dart';
import 'package:whatsapp_clone_application/core/constants/color_constants.dart';
import 'package:whatsapp_clone_application/view/HomeScreen/tabs/Community_tab.dart';
import 'package:whatsapp_clone_application/view/HomeScreen/tabs/calls_tab.dart';
import 'package:whatsapp_clone_application/view/HomeScreen/tabs/chat_tabs.dart';
import 'package:whatsapp_clone_application/view/HomeScreen/tabs/status_tab.dart';

class StateScreen extends StatefulWidget {
  const StateScreen({super.key});

  @override
  State<StateScreen> createState() => _StateScreenState();
}

class _StateScreenState extends State<StateScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(

        // floating button

        floatingActionButton: Container(
          width: 70,
          height: 70,
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: (){},
              child:  Icon(
                Icons.message
              ),

              backgroundColor: ColorConstants.primarygreen,
              ),
          ),
        ),
      // appbar design 

        appBar: AppBar(
          elevation: 0,
         title: Padding(
           padding: const EdgeInsets.only(top: 15),
           child: Text(
              "Whatsapp",
              style: TextStyle(color: Colors.white,
              fontSize: 20),
            ),
         ),
       
       // icons

        actions: [
          Padding(
            padding: EdgeInsets.only(
              top: 12,
              right: 15
              ),

              child: Icon( 
                Icons.search, 
                size: 28,
                color: Colors.white
                ),
              ),
           
           SizedBox(
              width: 10,
            ),

            Padding(
            padding: EdgeInsets.only(
              top: 12,
              right: 15
              ),

            child:Icon(
            Icons.chat,
            size: 25,
             color: Colors.white
             ),
            ),

           // popup button

           PopupMenuButton(
            onSelected: (selected)  // routing to next fron popup options
            [

            ],
            elevation: 10,
              padding: EdgeInsets.symmetric(
                vertical: 20,
                ),
                iconSize: 28,
                iconColor: Colors.white,
                
                itemBuilder: (context)=>[
                  // popup title 1
                   PopupMenuItem(
                    value: 1,
                     child: Text(
                      " New Group",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                
                // popup title 2

                PopupMenuItem(
                    value: 2,
                    child: Text(
                      " New broadcast",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                 // popup title 3
                
                PopupMenuItem(
                    value: 3,
                    child: Text(
                      " Linked devices",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
 
                // popup title 4

                PopupMenuItem(
                    value: 4,
                    child: Text(
                      " Starred messages",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                 // popup title 5

                 PopupMenuItem(
                    value: 5,
                    child: Text(
                      " Payments",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                // popup title 6
                PopupMenuItem(
                    value: 6,
                    child: Text(
                      " Settings",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
               ],
                ),

            SizedBox(
              width: 5,
            ),
        
      ],
      
          backgroundColor: ColorConstants.primarygreen,
          bottom: TabBar(
              dividerHeight: 0,
              //isScrollable: true,
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 2,

              tabs: [

              // 1) community icon
               Icon(Icons.people_outline,
                color: Colors.white),
              
              // 2) chat
               Text(
                  "Chat",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
               
               // 3) status
                Text(
                  "Status",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              
               // 4) calls
                Text(
                  "Calls",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ]),
        ),

        body: TabBarView(children: [
          CommunityTab(),
          ChatTabs(),
          StatusTab(),
          CallsTab(),
        ]),
      ),
    );
  }
}