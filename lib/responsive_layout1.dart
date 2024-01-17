import 'package:flutter/material.dart';

class ResponsiveLayout1 extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  final Widget tabletScreenLayout;

  const ResponsiveLayout1({
    super.key,
  required this.webScreenLayout,
    required this.tabletScreenLayout,
    required this.mobileScreenLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
          if(constraints.maxWidth<500){
            return mobileScreenLayout;
          }else if(constraints.maxWidth<900){
            return tabletScreenLayout;
          }else{
            return webScreenLayout;
          }
        }
    );
  }
}
