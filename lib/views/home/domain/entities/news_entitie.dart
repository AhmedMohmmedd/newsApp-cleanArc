import 'package:equatable/equatable.dart';

class NewsEntity extends Equatable {
  final String title;
  final String author;
  final String url;
  final String publishedAt;

 const NewsEntity({
    required this.title,
    required this.author,
    required this.url,
    required this.publishedAt,
  });

  @override
  List<Object?> get props => [
        title,
        author,
        url,
        publishedAt,
      ];
}
