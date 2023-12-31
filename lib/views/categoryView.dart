import 'package:flutter/material.dart';
import 'package:news_app/views/NewListViewBuilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("News"),
            Text("Cloud", style: TextStyle(color: Colors.orange)),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(category: category),
          ],
        ),
      ),
    );
  }
}
