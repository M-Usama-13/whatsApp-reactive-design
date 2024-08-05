import 'package:flutter/material.dart';
import 'package:reactive_whatsapp/colors.dart';
import 'package:reactive_whatsapp/widgets/chat_list.dart';
import 'package:reactive_whatsapp/widgets/contactsList.dart';

import '../info.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: const CircleAvatar(
        //   backgroundImage: NetworkImage(''),
        // ),
        title: Text(info[0]['name'].toString()),
        actions: const [
          Icon(Icons.video_call,color: Colors.grey,),
          Icon(Icons.call,color: Colors.grey,),
          Icon(Icons.more_vert,color: Colors.grey,),
        ],
      ),
      body: Column(
        children:  [
         const Expanded(
           flex: 9,
             child: ChatList()),
          Expanded(
            flex: 1,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none
                  )
                ),
                hintText: 'type here to chat',
                filled: true,
                fillColor: mobileChatBoxColor,
                prefixIcon: const Padding(padding: EdgeInsets.only(left: 15,right: 15),
                child: Icon(Icons.emoji_emotions_outlined,color: Colors.grey,)
                ),
                suffixIcon: const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(Icons.camera_alt,color: Colors.grey,),
                    Icon(Icons.attach_file,color: Colors.grey,),
                    Icon(Icons.money,color: Colors.grey,),
                  ],
                ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
