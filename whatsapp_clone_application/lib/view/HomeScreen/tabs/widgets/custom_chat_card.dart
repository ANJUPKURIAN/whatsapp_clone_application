import 'package:flutter/material.dart';

class CustomChatCard extends StatelessWidget {
  const CustomChatCard(
    {super.key,
  required this.userName,
  required this.message,
  required this.time,
  required this.proPic,
  required this.count,
  });

  final String userName;
  final String message;
  final String time;
  final String proPic;
  final int count;
   
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(proPic),
                radius: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  Text(userName),
                  SizedBox(
                    height: 10,
                  ),
                  Text(message),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Text(time),
              SizedBox(
                height: 10,
              ),
             
             // if message count > 0 ,then circle avatar , else sizedbox - no message count.
              count>0 ?
              CircleAvatar(
                backgroundColor: Colors.green.shade500,
                
                radius: 12,
                child: Text(count.toString(), 
                style: TextStyle(fontSize: 14,
                color: Colors.white),
                ),
              )

              :SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}