import 'package:flutter/material.dart';

class ViewsIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Spacer(),
        Text('65',style: TextStyle(color: Colors.white,fontSize: 13),),
        SizedBox(width: 5,),
        Icon(Icons.remove_red_eye,color: Colors.white,size: 20,),
        SizedBox(width: 15,),
        Icon(Icons.share_rounded,color: Colors.white,size: 20,),
      ],
    );
  }
}
