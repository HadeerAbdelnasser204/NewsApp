import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list_view.dart';
import 'package:news_app/widgets/news_list_view.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: RichText(
                  text: const TextSpan(children: [
            TextSpan(
                text: 'News',
                style: TextStyle(color: Colors.black, fontSize: 24)),
            TextSpan(
                text: 'Cloud',
                style: TextStyle(color: Colors.orange, fontSize: 24)),
          ]))),
          backgroundColor: Colors.transparent,
          elevation: 0, //?
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
                NewsListView(),
              ],
            )));
  }
}
