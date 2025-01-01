import 'package:dio/dio.dart';
import 'package:news_app/modules/artical_model.dart';

class NewsServices {
  late Dio dio;
  NewsServices(this.dio);

  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=aeebd1c24ed7487ca8c7367e3ccac98f&country=us&category=$category');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(
            article); // Create an ArticleModel object from the JSON object

        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
