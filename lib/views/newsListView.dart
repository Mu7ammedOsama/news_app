import 'package:flutter/material.dart';

// models
import 'package:news_app/models/articleModel.dart';

// widgets
import 'package:news_app/widgets/newsTileWidget.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.articles});

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: NewsTileWidget(articleModel: articles[index]),
        ),
      ),
    );
  }
}
