import 'package:dio/dio.dart';

// models
import 'package:news_app/models/articleModel.dart';

class NewsService {
  const NewsService(this.dio);

  final Dio dio;

  Future<List<ArticleModel>> getTopHeadLinesNews({required String category}) async {
    try {
      Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=99d1873a8ad84aac84b87f2d3e5e99d1&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articleList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJSON(article);
        articleList.add(articleModel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
