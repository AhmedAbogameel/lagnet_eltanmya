import 'package:flutter/material.dart';
import 'package:lagnet_eltanmya/views/categories/category_card.dart';
import 'package:lagnet_eltanmya/views/committeeNews/view.dart';
import 'package:lagnet_eltanmya/widgets/app_bar.dart';

class CategoriesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar('اقسام اللجنه'),
          Expanded(child: GridView.builder(
            itemCount: _images.length,
            padding: EdgeInsets.symmetric(horizontal: 20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              childAspectRatio: 0.9
            ),
            itemBuilder: (_,index)=> CategoryCard(
              title: _titles[index],
              image: _images[index],
            ),
          ))
        ],
      ),
    );
  }

  List<String> _titles = [
    'نحو\nمجتمع متعاون',
    'مركز\nسواعد الشباب',
    'مركز\nقمه النسائي',
    'مركز\nاجيال للاطفال',
    'مركز\nقادر لتنميه مهارات',
    'مركز\nنماء للابناء',
    'فريق\nتعاون التطوعي',
  ];

  List<String> _images = [
    'handshake',
    'group',
    'woman',
    'puzzle',
    'logic',
    'idea',
    'share',
  ];

}