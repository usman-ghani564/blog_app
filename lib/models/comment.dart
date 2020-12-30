class Comment {
  String _id;
  String _comment;
  String _userID;
  DateTime _dateOfComment;

  Comment();

  set setID(String id) => this._id = id;
  set setComment(String cm) => this._comment = cm;
  set setUserID(String uID) => this._userID = uID;
  set setDateOfComment(DateTime d) => this._dateOfComment = d;

  String get getID => this._id;
  String get getComment => this._comment;
  String get getUserID => this._userID;
  DateTime get getDateOfComment => this._dateOfComment;
}
