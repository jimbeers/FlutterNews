import 'package:flutter/material.dart';

class ArticleModel {
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String content;
  final String publishedAt;

  ArticleModel({
    this.author = "",
    @required this.title,
    this.description = "",
    this.url = "",
    this.urlToImage = "",
    this.content = "",
    this.publishedAt = "",
  });
}
