import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget webLayout;

  const ResponsiveLayout({Key? key, required this.mobileLayout, required this.webLayout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
          if (constraints.maxWidth > 900){
            return webLayout;
          }
          else{
            return mobileLayout;
          }
        }
    );
  }
}
