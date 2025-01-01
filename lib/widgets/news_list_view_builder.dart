import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/modules/artical_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_list_view.dart';

// Stateful widget to build the news list view
class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  // Variable to indicate loading state
  final bool isLoading = true;
  // Variable to hold the future of fetching news articles
  var future;

  @override
  void initState() {
    super.initState();
    // Initialize the future with the general news fetching function
    future = NewsServices(Dio()).getGeneralNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    // Use FutureBuilder to fetch news articles
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // If data is available, display the list of news articles
          return NewsListView(articles: snapshot.data!);
        } else {
          // If an error occurred, display an error message
          if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(child: (Text('Error fetching data'))),
            );
          } else {
            // If the connection is still waiting for data, show a circular progress indicator
            return const SliverToBoxAdapter(
              child: Center(child: (CircularProgressIndicator())),
            );
          }
        }
      },
    );
  }
}
