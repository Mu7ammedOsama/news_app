import 'package:flutter/material.dart';

// models
import 'package:news_app/models/articleModel.dart';

class NewsTileWidget extends StatelessWidget {
  const NewsTileWidget({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            articleModel.image ?? "https://lightwidget.com/wp-content/uploads/localhost-file-not-found.jpg",
            height: 200,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          articleModel.description ?? "No Description",
          maxLines: 2,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
