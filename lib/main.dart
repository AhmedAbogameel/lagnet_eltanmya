import 'package:flutter/material.dart';
import 'package:lagnet_eltanmya/constants.dart';
import 'package:lagnet_eltanmya/views/splash/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (_, child) =>
          Directionality(textDirection: TextDirection.rtl, child: child),
      title: 'لجنه التنميه',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: SplashView(),
    );
  }
}