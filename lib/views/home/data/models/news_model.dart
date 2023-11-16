import 'package:test_project/views/home/domain/entities/news_entitie.dart';

class NewsModel extends NewsEntity {
  const NewsModel({
    required super.title,
    required super.author,
    required super.url,
    required super.publishedAt,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        title: json['title'],
        author: json['author'],
        url: json['url'],
        publishedAt: json['publishedAt'],
      );
}
