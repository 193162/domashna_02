import 'dart:io';
import 'user.dart';

import 'package:flutter/material.dart';

class Project {
  String project_name;
  List <User> users;
  String description;
  DateTime creation_date;

  Project(this.project_name, this.users, this.description, this.creation_date); 
}