import 'package:flutter/material.dart';
import 'package:reactive_whatsapp/colors.dart';
import 'package:reactive_whatsapp/responsive/Responsive_layout.dart';
import 'package:reactive_whatsapp/screens/mobileScreenLayout.dart';
import 'package:reactive_whatsapp/screens/webScreenLayout.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor
      ),
      home: const ResponsiveLayout(webLayout: WebScreenLayout(),mobileLayout: MobileScreenLayout()),
    );
  }
}
