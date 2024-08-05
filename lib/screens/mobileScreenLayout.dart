import 'package:flutter/material.dart';
import 'package:reactive_whatsapp/colors.dart';
import 'package:reactive_whatsapp/widgets/contactsList.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: appBarColor,
          title: const Text('WhatsApp',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey
          ),
          ),
          bottom: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 3,
            unselectedLabelColor: Colors.grey,
            labelColor: tabColor,
            labelStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold
            ),
            tabs: [
              Tab(text: 'CHATS',),
              Tab(text: 'STATUS',),
              Tab(text: 'CALLS',)
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ContactList(),
            Text('status'),
            Text('calls'),
          ],
        ),
      ),
    );
  }
}
