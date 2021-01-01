import 'package:flutter/foundation.dart';

enum Gender {
  male,
  female,
  other,
}

class Person {
  @required
  String _id;
  @required
  String _firstName;
  @required
  String _lastName;
  @required
  DateTime _dob;
  @required
  Gender _gender;
  String _imageUrl;

  Person(this._id, this._firstName, this._lastName, this._dob, this._gender,
      this._imageUrl);

  set setID(String id) => this._id = id;
  set setFirstName(String fn) => this._firstName = fn;
  set setLastName(String ln) => this._lastName = ln;
  set setDoB(DateTime dob) => this._dob = dob;
  set setGender(Gender gdr) => this._gender = gdr;
  set setImageUrl(String imgUrl) => this._imageUrl = imgUrl;

  String get getID => this._id;
  String get getFirstName => this._firstName;
  String get getLastName => this._lastName;
  DateTime get getDoB => this._dob;
  Gender get getGender => this._gender;
  String get getImageUrl => this._imageUrl;
}
