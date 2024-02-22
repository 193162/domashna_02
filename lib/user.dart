import 'dart:io';

import 'package:flutter/material.dart';

class User {
  String username;
  String email;
  String password;
  String name;
  String surname;
  FileImage profile_pic;

  User(this.username, this.email, this.password, this.name, this.surname, this.profile_pic);
}