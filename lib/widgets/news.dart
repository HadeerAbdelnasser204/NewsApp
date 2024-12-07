import 'package:flutter/material.dart';
import 'package:news_app/modules/news_module.dart';

class News extends StatelessWidget {
  const News({super.key, this.news});
  final NewsModule? news;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(news!.image,
              width: double.infinity, fit: BoxFit.cover),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          news!.title,
          maxLines: 2,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Text(news!.description,
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.grey))
      ],
    );
  }
}
