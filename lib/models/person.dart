class Person {
  String _id;
  String _firstName;
  String _lastName;
  DateTime _dob;
  String _gender;

  Person();

  set setID(String id) => this._id = id;
  set setFirstName(String fn) => this._firstName = fn;
  set setLastName(String ln) => this._lastName = ln;
  set setDoB(DateTime dob) => this._dob = dob;
  set setGender(String gdr) => this._gender = gdr;

  String get getID => this._id;
  String get getFirstName => this._firstName;
  String get getLastName => this._lastName;
  DateTime get getDoB => this._dob;
  String get getGender => this._gender;
}
