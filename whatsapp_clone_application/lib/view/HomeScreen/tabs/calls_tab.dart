import 'package:flutter/material.dart';
import 'package:whatsapp_clone_application/view/HomeScreen/tabs/widgets/custom_chat_card.dart';
import 'package:whatsapp_clone_application/view/dummydb.dart';

class CallsTab extends StatelessWidget {
  const CallsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => CustomChatCard(
        userName: DummyDb.chatList[index]['userName'],
        time: DummyDb.chatList[index]['time'],
        count: DummyDb.chatList[index]['count'],
        proPic: DummyDb.chatList[index]['proPic'],
        message: DummyDb.chatList[index]['message'],
        ),
        separatorBuilder: (context, index) => Divider(),
        itemCount: DummyDb.chatList.length);
  }
}