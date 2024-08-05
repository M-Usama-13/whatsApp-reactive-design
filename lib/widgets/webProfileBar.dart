import 'package:flutter/material.dart';
import 'package:reactive_whatsapp/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: webAppBarColor,
        border: Border(
          right: BorderSide(
            color: dividerColor
          )
        )
      ),

      padding: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width*0.33,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          const CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                'https://www.socialketchup.in/wp-content/uploads/2020/05/fi-vill-JOHN-DOE.jpg'),
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.chat )),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert ))
            ],
          )
        ],
      ),
    );
  }
}
