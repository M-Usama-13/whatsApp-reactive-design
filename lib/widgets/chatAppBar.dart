import 'package:flutter/material.dart';
import 'package:reactive_whatsapp/colors.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: webAppBarColor,
      padding: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width*0.67,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Row(
            children: const [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    'https://www.socialketchup.in/wp-content/uploads/2020/05/fi-vill-JOHN-DOE.jpg'),
              ),
              SizedBox(width: 20,),
              Text('Ore wa U_sama',
              style: TextStyle(
                fontSize: 18,
              ),
              ),

            ],
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.search )),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert ))
            ],
          )
        ],
      ),
    );
  }
}
