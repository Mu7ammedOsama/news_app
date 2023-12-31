class ArticleModel {
  const ArticleModel({required this.image, required this.title, required this.description});

  factory ArticleModel.fromJSON(json) {
    return ArticleModel(image: json['urlToImage'], title: json['title'], description: json['description']);
  }

  final String? image;
  final String title;
  final String? description;
}
