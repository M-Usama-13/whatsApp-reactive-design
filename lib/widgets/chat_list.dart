import 'package:flutter/material.dart';
import 'package:reactive_whatsapp/info.dart';
import 'package:reactive_whatsapp/widgets/sender_message_tile.dart';

import 'my_msg_tile.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context,index){
       if(messages[index]['isMe'] == true){
         return MyMessageTile(
           message: messages[index]['text'].toString(),
           date: messages[index]['time'].toString(),

         );
       }
       else{
         return SenderMessageTile(
           message: messages[index]['text'].toString(),
           date: messages[index]['time'].toString(),
         );
       }
      },
    );
  }
}
