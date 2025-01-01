class ArticleModel {
  final String? image;
  final String title;
  final String? description;

  const ArticleModel(
      {required this.image, required this.title, required this.description});

  // A factory method to convert a JSON object into an ArticleModel object
  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      image: json['urlToImage'],
      title: json['title'],
      description: json['description'],
    );
  }
}
