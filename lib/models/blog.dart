import 'package:blog_app/models/comment.dart';

class Blog {
  String _id;
  String _blogPost;
  String _userID;
  DateTime _postingDate;
  int _likes;
  int _dislikes;
  int _numberOfComments;
  int _category;
  List<Comment> _comments;

  Blog();

  set setID(String id) => this._id = id;
  set setBlogPost(String blog) => this._blogPost = blog;
  set setUserID(String uID) => this._userID = uID;
  set setPostingDate(DateTime pd) => this._postingDate = pd;
  set setNumberOfLikes(int lks) => this._likes = lks;
  set setNumberOfDislikes(int dlks) => this._dislikes = dlks;
  set setNumberOfComments(int cmts) => this._numberOfComments = cmts;
  set setCategory(int cat) => this._category = cat;

  String get getID => this._id;
  String get getBlogPost => this._blogPost;
  String get getUserID => this._userID;
  DateTime get getPostingDate => this._postingDate;
  int get getNumberOfLikes => this._likes;
  int get getNumberOfDislikes => this._dislikes;
  int get getNumberOfComments => this._numberOfComments;
  int get getCategory => this._category;

  List<Comment> get getComments {
    return [..._comments];
  }

  set setComments(List<Comment> c) {
    _comments = c;
  }

  void addComment(Comment c) {
    _comments.insert(0, c);
  }

  void removeComment(Comment c) {
    _comments.removeWhere((comment) {
      return comment.getID == c.getID;
    });
  }

  void removeCommentByID(String commentID) {
    _comments.removeWhere((comment) {
      return comment.getID == commentID;
    });
  }
}
