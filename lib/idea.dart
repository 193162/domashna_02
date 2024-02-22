import 'user.dart';

import 'package:flutter/material.dart';

class Idea {
  List <User> users;
  String description;
  DateTime submission_date;

  Idea (this.users, this.description, this.submission_date);
}