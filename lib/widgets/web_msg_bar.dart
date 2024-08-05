import 'package:flutter/material.dart';
import 'package:reactive_whatsapp/colors.dart';

class WebMessageBar extends StatelessWidget {
  const WebMessageBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.07,
      width: MediaQuery.of(context).size.width*0.67,
      color: chatBarMessage,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          const Icon(Icons.emoji_emotions_outlined),
          const Icon(Icons.attach_file_outlined),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height*0.07,
              width: MediaQuery.of(context).size.width*0.33,

              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: dividerColor)
                  )
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefix: const Padding(padding: EdgeInsets.only(left: 13),),
                    filled: true,
                    fillColor: searchBarColor,
                    hintText: 'Search for a chat',
                    hintStyle: const TextStyle(fontSize: 13),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    contentPadding: const EdgeInsets.only(top: 3)
                ),
              ),
            ),
          ),
          const Icon(Icons.mic)
        ],
      ),
    );
  }
}
