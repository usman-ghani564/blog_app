import 'package:blog_app/models/category.dart';

class ImageUrl {
  static final List<Map<Category, String>> imageUrl = [
    {Category.food: 'assets/images/pattern1.jpg'},
    {Category.health: 'assets/images/pattern2.jpg'},
    {Category.fashion: 'assets/images/pattern4.jpg'},
    {Category.finance: 'assets/images/pattern5.jpg'},
    {Category.travel: 'assets/images/pattern3.jpg'},
  ];

  static final List<String> usersImageUrl = [
    'assets/images/usman.png',
    'assets/images/husnain.jpg',
    'assets/images/ayesha.jpg',
  ];

  static String getImageUrlByCategory(Category c) {
    String cat;
    imageUrl.forEach((map) {
      map.forEach((key, value) {
        if (key == c) {
          cat = value;
          return;
        }
      });
    });
    return cat;
  }
}
