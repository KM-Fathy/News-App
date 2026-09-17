import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  final String baseUrl = "https://newsapi.org/v2";
  final String apiKey = "Put Your ApiKey Here To Get News";

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
        "$baseUrl/top-headlines?country=us&apiKey=$apiKey&category=$category",
      );
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData["articles"];

      List<ArticleModel> articleList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articleList.add(articleModel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
