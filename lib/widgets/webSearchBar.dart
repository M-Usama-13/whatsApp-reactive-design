import 'package:flutter/material.dart';
import 'package:reactive_whatsapp/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          filled: true,
          fillColor: searchBarColor,
          hintText: 'Search for a chat',
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child:  Icon(Icons.search, color: Colors.grey,),
          ),
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
    );
  }
}
