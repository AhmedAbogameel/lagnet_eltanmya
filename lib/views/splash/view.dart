import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lagnet_eltanmya/views/home/view.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    Timer(Duration(seconds: 3),()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> HomeView())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}