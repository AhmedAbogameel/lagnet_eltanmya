import 'package:flutter/material.dart';
import 'package:lagnet_eltanmya/constants.dart';
import 'package:lagnet_eltanmya/views/committeeNews/view.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String image;
  final String imagesPath = 'assets/images/';

  CategoryCard({this.title, this.image,});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 25,horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(imagesPath+image+'.png',color: kAccentColor,),
              Text(title,style: TextStyle(color: kAccentColor,fontWeight: FontWeight.bold),),
            ],
          ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage('assets/images/mask.png'),
          fit: BoxFit.cover
        )
      ),
    ),
      onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (_)=> CommitteeNewsView(),)),
    );
  }
}