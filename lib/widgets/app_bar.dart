import 'package:flutter/material.dart';
import 'package:lagnet_eltanmya/constants.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool popButton;
  CustomAppBar(this.title,{this.popButton = true});
  @override
  Widget build(BuildContext context) {
    final double topPadding = MediaQuery.of(context).padding.top * 1.7;
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.fromLTRB(20, topPadding, 20, 0),
      margin: EdgeInsets.only(bottom: 20),
      height: sizeFromHeight(context, 7.5 ,removeAppBarSize: false),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if(popButton)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                child: Image.asset('assets/images/back.png'),
                onTap: ()=> Navigator.pop(context),
              ),
            ),
          Text(title,style: Theme.of(context).textTheme.title,),
          Spacer(),
          if(!popButton)
          Image.asset('assets/images/logo-2.png')
        ],
      ),
    );
  }
}
