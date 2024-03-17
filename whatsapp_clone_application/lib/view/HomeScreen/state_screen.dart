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
      length: 3,
      child: Scaffold(
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

        appBar: AppBar(
         title: Text(
            "Whatsapp",
            style: TextStyle(color: Colors.white),
          ),

          actions: [
            Icon(Icons.search, color: Colors.white),

            SizedBox(
              width: 10,
            ),
            
            Icon(Icons.chat, color: Colors.white),
            SizedBox(
              width: 10,
            ),

            Icon(Icons.more_vert, 
            color:Colors.white),

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