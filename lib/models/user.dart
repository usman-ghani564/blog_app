import 'package:flutter/foundation.dart';

import '../models/person.dart';
import '../models/blog.dart';

class User extends Person {
  List<Blog> _blogs;

  User(
      {@required String id,
      @required String firstName,
      @required String lastName,
      @required DateTime dob,
      @required Gender gen})
      : super(id, firstName, lastName, dob, gen);

  List<Blog> get getBlogs {
    return [..._blogs];
  }

  set setBlogs(List<Blog> b) {
    _blogs = b;
  }

  void addBlog(Blog b) {
    _blogs.insert(0, b);
  }

  void removeBlog(Blog b) {
    _blogs.removeWhere((blog) {
      return blog.getID == b.getID;
    });
  }

  void removeBlogByID(String blogID) {
    _blogs.removeWhere((blog) {
      return blog.getID == blogID;
    });
  }
}
