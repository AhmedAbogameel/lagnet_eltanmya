import 'package:flutter/material.dart';
import '../../constants.dart';

class ImageButton extends StatelessWidget {
  final String image;
  final IconData icon;
  final String title;
  final Widget page;
  ImageButton({this.image, this.icon, this.title, this.page});
  final String _imagesPath = 'assets/images/img';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: sizeFromHeight(context, 4),
        alignment: Alignment.centerRight,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Icon(
                icon,
                color: kPrimaryColor,
                size: 20,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.white),
            ),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .subtitle
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
        margin: EdgeInsets.symmetric(horizontal: image == '1.png' ? 25 : 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(_imagesPath + image),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    kAccentColor.withOpacity(0.8), BlendMode.srcATop))),
      ),
      onTap: () =>
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => page)),
    );
  }
}