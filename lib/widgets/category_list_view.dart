import 'package:flutter/material.dart';
import 'package:news_app/modules/photos_module.dart';
import 'package:news_app/widgets/category.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });
  final List<PhotosModule> photos = const [
    PhotosModule(img: 'assets/technology.jpeg', name: 'Technology'),
    PhotosModule(img: 'assets/science2.png', name: 'Science'),
    PhotosModule(img: 'assets/sports.png', name: 'Sports'),
    PhotosModule(img: 'assets/health.png', name: 'Health'),
    PhotosModule(img: 'assets/bussiness.png', name: 'Business'),
    PhotosModule(img: 'assets/entertaiment.avif', name: 'Entertainment'),
    PhotosModule(img: 'assets/general.jpg', name: 'General'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 85,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: photos.length,
            itemBuilder: (context, index) {
              return PhotosCategory(
                photo: photos[index],
              );
            }));
  }
}
