import 'user.dart';
import 'project.dart';

import 'package:flutter/material.dart';

class Collaboration {
  List <User> users;
  String roles;
  String responsibilities;
  Project project;

  Collaboration(this.users, this.roles, this.responsibilities, this.project);
}