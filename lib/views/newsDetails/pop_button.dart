import 'package:flutter/material.dart';

import '../../constants.dart';

class PopButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Icon(Icons.arrow_back_ios_rounded,size: 20,color: kPrimaryColor,),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
      ),
      onTap: ()=> Navigator.pop(context),
    );
  }
}
