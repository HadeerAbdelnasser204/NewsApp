import 'package:flutter/material.dart';
import 'package:news_app/modules/photos_module.dart';
import 'package:news_app/views/category_view.dart';

class PhotosCategory extends StatelessWidget {
  const PhotosCategory({super.key, required this.photo});
  final PhotosModule photo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return CategoryView(category: photo.name);
          }),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 85,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            image: DecorationImage(
                image: AssetImage(photo.img),
                fit: BoxFit.cover,
                alignment: Alignment.center),
          ),
          child: Center(
            child: Text(
              photo.name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
