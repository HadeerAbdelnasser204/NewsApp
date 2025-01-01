import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list_view.dart';

import '../widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoryListView()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsListViewBuilder(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}
