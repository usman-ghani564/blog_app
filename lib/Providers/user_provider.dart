import '../models/person.dart';
import '../models/user.dart';

import 'package:flutter/cupertino.dart';

class UserProvider with ChangeNotifier {
  List<User> _users = [
    User(
        id: '1',
        firstName: 'Usman',
        lastName: 'Ghani',
        dob: DateTime.now(),
        gen: Gender.male,
        imageUrl: 'assets/images/usman.png'),
    User(
        id: '2',
        firstName: 'Husnain',
        lastName: 'Hamid',
        dob: DateTime.now(),
        gen: Gender.male,
        imageUrl: 'assets/images/husnain.jpg'),
    User(
        id: '3',
        firstName: 'Ayesha',
        lastName: 'Batool',
        dob: DateTime.now(),
        gen: Gender.female,
        imageUrl: 'assets/images/ayesha.jpg'),
  ];

  List<User> get getUsers {
    return [..._users];
  }

  User getUserById(String id) {
    return _users.firstWhere((user) {
      return user.getID == id;
    });
  }
}
