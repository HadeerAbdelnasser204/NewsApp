import 'package:flutter/material.dart';
import 'package:news_app/modules/artical_model.dart';

class News extends StatelessWidget {
  const News({super.key, required this.article});

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (article.image != null)
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              article.image!,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.grey[300],
                  child: const Icon(
                    Icons.broken_image,
                    size: 100,
                    color: Colors.grey,
                  ),
                );
              },
            ),
          )
        else
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.grey[300],
            child: const Icon(
              Icons.image,
              size: 100,
              color: Colors.grey,
            ),
          ),
        const SizedBox(height: 12),
        Text(
          article.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          article.description ?? 'No Description Available',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
