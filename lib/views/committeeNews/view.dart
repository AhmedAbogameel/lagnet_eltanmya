import 'package:flutter/material.dart';
import 'package:lagnet_eltanmya/views/committeeNews/news_card.dart';
import 'package:lagnet_eltanmya/widgets/app_bar.dart';

class CommitteeNewsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar('اخبار اللجنه'),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (_, index) => NewsCard(index),
            ),
          ),
        ],
      ),
    );
  }
}