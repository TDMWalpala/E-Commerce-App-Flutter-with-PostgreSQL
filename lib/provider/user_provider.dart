import 'package:amazon_clone/models/User.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  User _user =
      User(id: 0, name: '', email: '', password: '', type: '', token: '');

  User get user => _user;
  void setUser(String userData) {
    _user = User.fromJson(userData);
    notifyListeners();
  }
}
