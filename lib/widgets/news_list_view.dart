import 'package:flutter/material.dart';
import 'package:news_app/modules/news_module.dart';
import 'package:news_app/widgets/news.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});
  final List<NewsModule> news = const [
    NewsModule(
      image: 'assets/ai.png',
      title:
          'AI Revolution: How Artificial Intelligence is Changing Everyday Life',
      description:
          'From smart assistants to self-driving cars, discover the latest advancements in AI and how they are shaping the future.',
    ),
    NewsModule(
      title: 'Historic Win: National Team Claims Championship Title',
      description:
          'In a thrilling match that kept fans on the edge of their seats, the national team emerged victorious, securing their place in history.',
      image: 'assets/sp.png',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: news.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 22),
            child: News(
              news: news[index],
            ),
          );
        },
      ),
    );
  }
}
