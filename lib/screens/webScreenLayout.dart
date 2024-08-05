import 'package:flutter/material.dart';
import 'package:reactive_whatsapp/widgets/chatAppBar.dart';
import 'package:reactive_whatsapp/widgets/webProfileBar.dart';
import 'package:reactive_whatsapp/widgets/contactsList.dart';
import 'package:reactive_whatsapp/widgets/webSearchBar.dart';
import 'package:reactive_whatsapp/widgets/web_msg_bar.dart';

import '../widgets/chat_list.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Column(
              children:  const [
                WebProfileBar(),
                WebSearchBar(),
                ContactList()
              ],
            ),
          ),
          //TODO: add a web window
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/backgroundImage.png',
                    ),
                  fit: BoxFit.cover
                )
              ),
              child: Column(
                children: const [
                  ChatAppBar(),
                  Expanded(child: ChatList()),
                  WebMessageBar()
                  //Mesagebar
                ],
              ),
            ),
          ),

        ],
      )
    );
  }
}
