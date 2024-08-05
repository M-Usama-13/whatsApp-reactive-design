import 'package:flutter/material.dart';
import 'package:reactive_whatsapp/colors.dart';
import 'package:reactive_whatsapp/info.dart';

import 'mobile_chat_screen.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        //height: MediaQuery.of(context).size.height - MediaQuery.of(context).size.height*0.07,
        padding: const EdgeInsets.only(top:10),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: (context,index){
            return Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=> MobileChatScreen())
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child:ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(info[index]['profilePic'].toString()),
                              radius: 22,
                            ),
                            title: Text(info[index]['name'].toString(),style: const TextStyle(fontSize: 18,),),
                            subtitle: Text(info[index]['message'].toString(),style: const TextStyle(fontSize: 15,color: Colors.grey),),
                            trailing: Text(info[index]['time'].toString(),style: const TextStyle(fontSize: 13,color: Colors.grey),),
                          ),
                    ),
                  ),
                  const Divider(color: dividerColor,indent: 70, thickness: 1,),
                ]
              );
          }
        ),
      ),
    );
  }
}
