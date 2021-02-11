import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants.dart';

class NewsNameLinkButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Wrap(
        direction: Axis.horizontal,
        children: [
          Text('اسم الصحيفة : '),
          InkWell(
            child: FittedBox(child: Text('http://salmaniah.com/news/212',style: TextStyle(color: kPrimaryColor),)),
            onTap: ()async{
              if(await canLaunch('http://salmaniah.com/news/212')){
                await launch('http://salmaniah.com/news/212');
              }
            },
          ),
        ],
      ),
    );
  }
}