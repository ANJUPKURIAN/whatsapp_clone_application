import 'package:flutter/material.dart';
import 'package:whatsapp_clone_application/view/HomeScreen/tabs/widgets/custom_chat_card.dart';
import 'package:whatsapp_clone_application/view/dummydb.dart';

class ChatTabs extends StatelessWidget {
  const ChatTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      //itemCount:6,
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      
        itemBuilder: (context, index) => CustomChatCard
        (
        userName: DummyDb.chatList[index]['userName'],
        time: DummyDb.chatList[index]['time'],
        count: DummyDb.chatList[index]['count'],
        proPic: DummyDb.chatList[index]['proPic'],
        message: DummyDb.chatList[index]['message'],
        ),
        separatorBuilder: (context, index) => Divider(
          color: Colors.black.withOpacity(.1),
          indent: 30,
          endIndent: 30,
        ),
        itemCount: DummyDb.chatList.length );
  }
}