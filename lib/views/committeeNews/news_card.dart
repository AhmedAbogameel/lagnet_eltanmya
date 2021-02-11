import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lagnet_eltanmya/constants.dart';
import 'package:lagnet_eltanmya/views/newsDetails/view.dart';
import 'package:lagnet_eltanmya/widgets/container_shadow.dart';

class NewsCard extends StatelessWidget {
  final index;
  NewsCard(this.index);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: sizeFromHeight(context, 3.2),
        margin: EdgeInsets.all(10),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Hero(
                  tag: '$index',
                  child: Image.network(
                    'https://media.gettyimages.com/photos/business-people-working-in-modern-office-space-picture-id973718370?s=612x612',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
              ),
            ),
            ContainerShadow(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(
                    'استضافه مدير مركز التنميه الاجتماعيه',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '5 may 2020',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => NewsDetailsView())),
    );
  }
}