import 'dart:convert';

import 'package:flutternews/models/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];

  Future<void> getNews({String category = 'business'}) async {
    String url =
        "http://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=17495c8de22348d8acab29a3426c8d29";

    var response = await http.get(url);
    print("Here");
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            description: element['description'],
            content: element['content'],
          );

          news.add(articleModel);
        }
      });
    }
  }
}

class CategoryNews {
  List<ArticleModel> news = [];

  Future<void> getCategoryNews(String category) async {
    String url =
        "http://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=17495c8de22348d8acab29a3426c8d29";

    var response = await http.get(url);
    print("Here");
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel articleModel = ArticleModel(
            title: element['title'],
            author: element['author'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            description: element['description'],
            content: element['content'],
          );

          news.add(articleModel);
        }
      });
    }
  }
}
