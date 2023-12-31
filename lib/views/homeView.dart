import 'package:flutter/material.dart';

// views
import 'package:news_app/views/cardListView.dart';
import 'package:news_app/views/NewListViewBuilder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CardListView()),
            SliverToBoxAdapter(child: SizedBox(height: 24)),
            NewsListViewBuilder(category: 'general'),
          ],
        ),
      ),
    );
  }
}
