import 'package:flutter/material.dart';

import '../constants.dart';

class ContainerShadow extends StatelessWidget {
  final double radius;
  final Widget child;
  ContainerShadow({this.child,this.radius = 20});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        height: sizeFromHeight(context, 6),
        padding: EdgeInsets.symmetric(horizontal: 25,vertical: 12),
        child: child,
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(radius)),
          gradient: LinearGradient(
              colors: [Colors.black54,Colors.black12,Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.5,0.8,0.9]
          ),
          // borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}