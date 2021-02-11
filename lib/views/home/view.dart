import 'package:flutter/material.dart';
import 'package:lagnet_eltanmya/views/categories/view.dart';
import 'package:lagnet_eltanmya/views/home/image_button.dart';
import 'package:lagnet_eltanmya/views/home/staggered_view.dart';
import 'package:lagnet_eltanmya/widgets/app_bar.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar('الرئيسيه',popButton: false,),
          ImageButton(
            image: '1.png',
            icon: Icons.auto_awesome_mosaic,
            title: 'اقسام اللجنه',
            page: CategoriesView(),
          ),
          StaggeredView(),
        ],
      ),
    );
  }
}