import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lagnet_eltanmya/views/categories/view.dart';
import 'package:lagnet_eltanmya/views/committeeNews/view.dart';
import 'image_button.dart';

class StaggeredView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StaggeredGridView.countBuilder(
        padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        itemCount: _images.length,
        itemBuilder: (BuildContext context, int index) => ImageButton(
          image: _images[index],
          icon: _icons[index],
          title: _titles[index],
          page: _pages[index],
        ),
        staggeredTileBuilder: (int index) =>
            new StaggeredTile.count(2, index.isEven ? 3 : 1.5),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
    );
  }

  final List<String> _images = [
    '2.png',
    '3.png',
    '4.png',
    '5.jpeg',
  ];

  final List<IconData> _icons = [
    Icons.wifi_protected_setup,
    Icons.wysiwyg_rounded,
    Icons.settings,
    Icons.whatshot_outlined
  ];

  final List<String> _titles = [
    'تطوع معنا',
    'الاخبار',
    'الاعدادات',
    'المسابقه'
  ];

  final List<Widget> _pages = [
    CategoriesView(),
    CommitteeNewsView(),
    CategoriesView(),
    CategoriesView(),
  ];
}
