import 'package:flutter/material.dart';
import 'package:reactive_whatsapp/colors.dart';

class SenderMessageTile extends StatelessWidget {
  final String message;
  final String date;
  const SenderMessageTile({Key? key, required this.message, required this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width-45
        ),
        child: Card(
          elevation: 1,
          color: senderMessageColor,
          margin: const EdgeInsets.symmetric(vertical:5, horizontal: 15 ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
          ),
          child: Stack(
            children: [
              Padding(padding: const EdgeInsets.only(left: 10,right: 30,top: 5, bottom: 25),
              child: Text(message,style: const TextStyle( fontSize: 18),),
              ),
              Positioned(
                bottom: 5,
                right: 10,
                  child: Row(
                    children: [
                      Text(date,style: TextStyle(fontSize: 13,color: Colors.grey),),
                      const SizedBox(width: 5,),
                      const Icon(Icons.done_all_rounded)
                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
