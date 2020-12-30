import 'package:blog_app/models/category.dart';

import '../models/blog.dart';
import 'package:flutter/material.dart';

class BlogProvider with ChangeNotifier {
  List<Blog> _blogs = [
    Blog(
      DateTime.now().toString(),
      'The Food that everyone loves!',
      'Tech events have much significance when it comes to sutdents like FAST NUCES. It is a well known university especially for computer science. FAST conducts a lot of tech events like SOFTECH or GEEK WEEK but most of the students not even try to participate in those events. When students take part in these events, they learn a lot. Their skills are improved and they push their limits. Moreover they test their technical skills like coding or project development skills. It is a very competitive environment in a very positive way. Also these events give students a real exposure of the market like how things actually work and also give them insights that what should be done if a certain problem occurs. And sutdents learn a lot problem solving skilss in these events as well.',
      '1',
      DateTime.now(),
      Category.food,
    ),
    Blog(
      DateTime.now().toString(),
      'Why health is so much important',
      'To conclude all this, it is clear that technical events put a lot of value in students\' life. If students take these events seriously and participate in these events with all their heart then they will learn a lot and will gain professional experience which matters a lot in the real market.',
      '2',
      DateTime.now(),
      Category.health,
    ),
    Blog(
      DateTime.now().toString(),
      'Finance Guide that everyone need',
      'To conclude all this, it is clear that technical events put a lot of value in students\' life. If students take these events seriously and participate in these events with all their heart then they will learn a lot and will gain professional experience which matters a lot in the real market.',
      '3',
      DateTime.now(),
      Category.finance,
    ),
  ];

  List<Blog> get getAllBlogs {
    return [..._blogs];
  }

  Blog getblogByID(String id) {
    return _blogs.firstWhere((blog) {
      return blog.getID == id;
    });
  }
}
