import '../models/person.dart';
import '../models/blog.dart';

class User extends Person {
  List<Blog> _blogs;

  User();

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
