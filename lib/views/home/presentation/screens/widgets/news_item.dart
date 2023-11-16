import 'package:flutter/material.dart';
import 'package:test_project/core/utlis/app_constants.dart';

import '../../../domain/entities/news_entitie.dart';

class NewsItem extends StatelessWidget {
  NewsItem({super.key, required this.news, required this.index});
  List<NewsEntity> news = [];
  int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: AppConnstants.shadowPrimeryColor,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16))),
        child: Padding(
          padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
          child: Column(
            children: [
              Container(
                height: 90,
                decoration: const BoxDecoration(
                    color: AppConnstants.containerPrimeryColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16))),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    news[index].title,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    // 'Marcus Rashford MISSES OUT on Man United s trip to Fulham due to injury while Raphael Varane is benched for Jo - Daily Mail',
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 40,
                decoration: const BoxDecoration(
                    color: AppConnstants.containerPrimeryColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16))),
                child: Padding(
                  padding: const EdgeInsets.only(right: 8, left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        news[index].author,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        // 'Daily Mail',
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                            fontSize: 16,
                            fontStyle: FontStyle.italic),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            // '28/11/23',
                            news[index].publishedAt,
                            style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black87,
                                fontSize: 16,
                                fontStyle: FontStyle.italic),
                          ),
                          const Text(
                            'See Moree-->>',
                            style: TextStyle(
                                color: AppConnstants.kPrimeryColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
